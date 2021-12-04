
const express = require('express');
const controller = require('./controllers/controller');
const routes = express.Router();

routes.get('/', controller.raiz );
routes.get('/alunos', controller.alunos);

routes.get('/alunos/:nome_alu', controller.searchNames);
routes.get('/alunosnotas/:nome_alu', controller.searchNotas);

module.exports = routes;

