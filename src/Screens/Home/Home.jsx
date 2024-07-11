import { React } from "react";

import { ImageBackground, View } from "react-native";
import { Button, Text } from "react-native-paper";
import { useDispatch, useSelector } from "react-redux";
import style from "./style";
import {
  userComum,
  userNoPrescritor,
  userPrescritor,
} from "../../reducer/userTypeSlice";

export default function Home({ navigation }) {
  const dispatch = useDispatch();

  const uri = require("../../../assets/logo_transparente.png");
  return (
    <View style={style.header}>
      <ImageBackground source={uri} style={style.image}>
        <Text style={style.text}>Bem vindo!</Text>
        <Text style={style.text}>SOS Vida</Text>
        <Button
          style={style.botao}
          buttonColor="#fbc02d"
          mode="contained"
          onPress={() => {
            dispatch(userComum());
            navigation.navigate("Questions");
          }}
        >
          Usuário
        </Button>
        <Button
          style={style.botaoPrescritor}
          buttonColor="#fbc02d"
          mode="contained"
          onPress={() => {
            dispatch(userPrescritor());
            navigation.navigate("Questions");
          }}
        >
          Profissional Prescritor
        </Button>
        <Button
          style={style.botaoNaoPrescritor}
          buttonColor="#fbc02d"
          mode="contained"
          onPress={() => {
            dispatch(userNoPrescritor());
            navigation.navigate("Questions");
          }}
        >
          Profiss. Não Prescritor
        </Button>
      </ImageBackground>
    </View>
  );
}
