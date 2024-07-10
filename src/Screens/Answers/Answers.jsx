import React, { useEffect, useState } from "react";
import {
  ImageBackground,
  Linking,
  SafeAreaView,
  ScrollView,
  View,
} from "react-native";
import {
  Avatar,
  Button,
  Card,
  Dialog,
  PaperProvider,
  Text,
} from "react-native-paper";
import { useSelector } from "react-redux";
import USER_TYPE_ENUM from "../../consts/useType";
import style from "./style";

export default function Answers({ navigation, route }) {
  const { answer } = route.params;
  const uri = require("../../../assets/logo_transparente.png");
  const userType = useSelector((state) => state.userType.value);
  const [visible, setVisible] = useState(false);
  const showDialog = () => setVisible(true);
  const hideDialog = () => setVisible(false);

  const ligar = () => {
    hideDialog();
    Linking.openURL("tel:188");
  };

  useEffect(() => {
    if (userType == USER_TYPE_ENUM.USER_COMUM && answer >= 11) showDialog();
  }, []);

  return (
    <>
      <ImageBackground source={uri} style={style.image}>
        <SafeAreaView style={style.container}>
          <ScrollView>
            <PaperProvider>
              <View style={style.header}>
                <Text style={style.subtext}>Resultado Da Avaliação:</Text>
                {answer < 6 && <Text style={style.text}>Normal</Text>}
                {answer >= 6 && answer <= 10 && (
                  <Text style={style.textLeve}>Depressão Leve</Text>
                )}
                {answer >= 11 && (
                  <Text style={style.textSevera}>Depressão Severa</Text>
                )}
                <Text style={style.text}>Pontos Na Escala GDS</Text>
                <Avatar.Text
                  color="white"
                  size={100}
                  label={answer}
                  style={style.avatar}
                />
                {answer <= 10 && (
                  <View>
                    <Card style={style.card}>
                      <Card.Content>
                        <Card.Title title="Recomentações" />
                        <Text style={style.cardText}>
                          {`Atividade física supervisionada.\n`}
                        </Text>
                        <Text style={style.cardText}>
                          {`Praticar auto cuidado, como meditação e ioga.\n`}
                        </Text>
                        <Text style={style.cardText}>
                          {`Alimentação saudável.\n`}
                        </Text>
                        <Text style={style.cardText}>
                          {`Conviver com pessoas que lhe transmitam paz e felicidade.\n`}
                        </Text>
                        <Text style={style.cardText}>
                          {`Contato com a natureza.\n`}
                        </Text>
                        <Text style={style.cardText}>
                          {`Se necessário, realizar psicoterapia.\n`}
                        </Text>
                      </Card.Content>
                    </Card>
                  </View>
                )}

                <View style={style.button}>
                  <Button
                    style={{ marginEnd: 10 }}
                    buttonColor="#fbc02d"
                    mode="contained"
                    onPress={() => ligar()}
                  >
                    Ligar para o CVV
                  </Button>
                  <Button
                    buttonColor="#fbc02d"
                    mode="contained"
                    rippleColor="white"
                    onPress={() => navigation.navigate("Home")}
                  >
                    Finalizar
                  </Button>
                  {/* {answer >= 6 && (
                    <Button
                      style={{ marginStart: 5 }}
                      buttonColor="#fbc02d"
                      rippleColor="white"
                      mode="contained"
                      onPress={() => navigation.navigate("PartOne")}
                    >
                      Avançar
                    </Button>
                  )} */}
                </View>
              </View>
            </PaperProvider>
          </ScrollView>
        </SafeAreaView>
        <Dialog visible={visible} onDismiss={hideDialog}>
          <Dialog.Title>Atenção</Dialog.Title>
          <Dialog.Content>
            <Text variant="bodyMedium">
              O nível de depressão está elevado, você será encaminhado ao CVV.
            </Text>
          </Dialog.Content>
          <Dialog.Actions>
            <Button onPress={ligar}>Ok</Button>
          </Dialog.Actions>
        </Dialog>
      </ImageBackground>
    </>
  );
}
