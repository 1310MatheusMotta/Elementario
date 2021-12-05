import React from "react";
import styles from "../../styles/styles_content";
import conn from "../../services/connection";
import { useState, useEffect } from "react";
import {View, Text, TouchableOpacity, FlatList, ImageBackground, TextInput, Image} from "react-native";
import { useNavigation } from "@react-navigation/core";


export default function InApp(){

  const[alunos, setAlunos] = useState([])
  
  async function getAll(){
    const response = await conn.get('alunosnotas/a')
    setAlunos(response.data)
  }

  useEffect(()=>{
    getAll()
  }, [])

  const[nomeAlunos, setNomeAlunos] = useState('')

  async function FilterNames(){
    const response = await conn.get('alunosnotas/' + nomeAlunos)
    setAlunos(response.data)
  }

  useEffect(()=>{
    FilterNames()
  }, [nomeAlunos])


      //navegação

      const navigation = useNavigation();

      function naviToHome(){
        navigation.navigate('Homepage');
      }

  return (
    
        <View>
          <ImageBackground source={require('../../icons/bg.jpg')} style={styles.bgList}>

          <TextInput style={styles.txtInp} placeholder="Pesquisar por alunos" onChangeText={(v)=>setNomeAlunos((v))}></TextInput>

              <FlatList

                style={styles.list}
                data={alunos}
                keyExtractor={alunos=> String(alunos.id_alu)}
                showsVerticalScrollIndicator={false}

                renderItem={({item:alunos})=>(

                  <View style={styles.itemList}>
                    <Text>Aluno: {alunos.nome_alu}</Text>
                    <Text>Disciplina: {alunos.nome_dis}</Text>
                    <Text>Nota registrada: {alunos.valor}</Text>
                    <Text>Média final registrada: {alunos.media}</Text>
                    
                    

                  </View>

                )}
              />
          </ImageBackground>
        </View>
  );
}