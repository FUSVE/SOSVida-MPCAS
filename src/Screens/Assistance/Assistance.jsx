import React from "react";
import { ImageBackground, View } from "react-native";
import { Button, Text, Avatar } from "react-native-paper";
import style from "./style";

export default function Assistance({ navigation, route }) {
  const { resposta } = route.params;
  const uri = require("../../../assets/logo_transparente.png");
  return (
    <>
      <ImageBackground source={uri} style={style.image}>
        <View style={style.header}>
          <Text style={style.subtext}>Resultado Da Avaliação:</Text>
          {resposta < 6 && <Text style={style.text}>Normal</Text>}
          {resposta >= 6 && resposta <= 10 && (
            <Text style={style.textLeve}>Depressão Leve</Text>
          )}
          {resposta >= 11 && (
            <Text style={style.textSevera}>Depressão Severa</Text>
          )}
          <Text style={style.text}>Pontos Na Escala GDS</Text>
          <Avatar.Text
            color="white"
            size={100}
            label={resposta}
            style={style.avatar}
          />
          <View style={style.button}>
            <Button
              buttonColor="black"
              mode="contained"
              onPress={() => navigation.navigate("Home")}
            >
              Finalizar
            </Button>
            {resposta >= 6 && (
              <Button
                style={{ marginStart: 5 }}
                buttonColor="black"
                mode="contained"
                onPress={() => navigation.navigate("ParteOne")}
              >
                Avançar
              </Button>
            )}
          </View>
        </View>
      </ImageBackground>
    </>
  );
}
