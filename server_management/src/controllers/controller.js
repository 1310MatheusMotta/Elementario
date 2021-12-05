const knex = require('../database/index');


module.exports = {

    async raiz(req, res){
        res.send('It Works !!');

    },
    

    async alunos(req, res){ //dados gerais alunos
        const results = await knex('alunos');
        return res.json(results);
    },

    async searchNames(req, res){ //filtro alunos
        try {
             const { nome_alu } = req.params;     
             const result = await knex('alunos').where('nome_alu', 'like', '%' + nome_alu + '%');

             return res.json(result);

        } catch (error) {
            return res.status(400).json({error: error.message});
        }
    },

    async searchNotas(req, res){ 
        try {
             const { nome_alu } = req.params;    
            // console.log(nome_alu);
             if( nome_alu != undefined){

                const result = await knex('alunos')
                
                .join('aprovados', 'aprovados.id_aluno', '=', 'alunos.id_alu')
                .select('alunos.id_alu', 'alunos.nome_alu', 'aprovados.media')
                .where('nome_alu', 'like', '%' + nome_alu + '%');
    
                return res.json(result);

             }else{
                return res.status(411).json({error: 'Favor enviar o nome do aluno!'});
             }
             

        } catch (error) {
            return res.status(400).json({error: error.message});
        }
    },


}