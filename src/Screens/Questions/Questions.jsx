import * as React from "react";
import { useEffect, useState } from "react";
import { ImageBackground, SafeAreaView, ScrollView, View } from "react-native";
import { Button, Dialog, Text } from "react-native-paper";
import { RadioButton } from "../../components/RadioButton";
import style from "./style";

export default function Questions({ navigation, route }) {
  const [valor, setValor] = useState();
  const [valor2, setValor2] = useState();
  const [valor3, setValor3] = useState();
  const [valor4, setValor4] = useState();
  const [valor5, setValor5] = useState();
  const [valor6, setValor6] = useState();
  const [valor7, setValor7] = useState();
  const [valor8, setValor8] = useState();
  const [valor9, setValor9] = useState();
  const [valor10, setValor10] = useState();
  const [valor11, setValor11] = useState();
  const [valor12, setValor12] = useState();
  const [valor13, setValor13] = useState();
  const [valor14, setValor14] = useState();
  const [valor15, setValor15] = useState();
  const [total, setTotal] = useState();
  const [visible, setVisible] = useState(false);
  const hideDialog = () => setVisible(false);
  const showDialog = () => setVisible(true);
  const uri = require("../../../assets/logo_transparente.png");

  useEffect(() => {
    somaTotal();
  }, [
    valor,
    valor2,
    valor3,
    valor4,
    valor5,
    valor6,
    valor7,
    valor8,
    valor9,
    valor10,
    valor11,
    valor12,
    valor13,
    valor14,
    valor15,
  ]);

  const somaTotal = () => {
    let soma =
      valor +
      valor2 +
      valor3 +
      valor4 +
      valor5 +
      valor6 +
      valor7 +
      valor8 +
      valor9 +
      valor10 +
      valor11 +
      valor12 +
      valor13 +
      valor14 +
      valor15;

    if (soma !== undefined) setTotal(soma);
  };

  const [checked, setChecked] = useState("first");

  return (
    <>
      <ImageBackground source={uri} style={style.image}>
        <SafeAreaView style={style.container}>
          <ScrollView>
            <Text style={style.title}>Avaliação GDS</Text>
            <View style={style.header}>
              <RadioButton
                childreToParetent={setValor}
                pergunta="1-Está satisfeito(a) com sua vida?"
                yes={0}
                no={1}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor2}
                pergunta="2-Interrompeu muitas de suas atividades?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor3}
                pergunta="3-Acha sua vida vazia?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor4}
                pergunta="4-Aborrece-se com frequência?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor5}
                pergunta="5-Sente-se bem com a vida na maior parte do tempo?"
                yes={0}
                no={1}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor6}
                pergunta="6-Teme que algo ruim lhe aconteça?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor7}
                pergunta="7-Sente-se alegre a maior parte do tempo?"
                yes={0}
                no={1}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor8}
                pergunta="8-Sente-se desamparado com frequência?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor9}
                pergunta="9-Prefere ficar em casa a sair e fazer coisas novas?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor10}
                pergunta="10-Acha que tem mais problemas de memória que outras pessoas?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor11}
                pergunta="11-Acha que é maravilhoso estar vivo(a)?"
                yes={0}
                no={1}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor12}
                pergunta="12-Sente-se inútil?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor13}
                pergunta="13-Sente-se cheio(a) de energia?"
                yes={0}
                no={1}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor14}
                pergunta="14-Sente-se sem esperança?"
                yes={1}
                no={0}
              ></RadioButton>

              <RadioButton
                childreToParetent={setValor15}
                pergunta="15-Acha que os outros têm mais sorte que você?"
                yes={1}
                no={0}
              ></RadioButton>

              <View style={{ alignItems: "center" }}>
                <Button
                  style={{ marginBottom: 50 }}
                  buttonColor="#fbc02d"
                  mode="contained"
                  onPress={() => {
                    if (total === undefined || isNaN(total)) showDialog();
                    else navigation.navigate("Answers", { answer: total });
                  }}
                >
                  Avançar
                </Button>
              </View>
              <Dialog visible={visible} onDismiss={hideDialog}>
                <Dialog.Title>Anteção</Dialog.Title>
                <Dialog.Content>
                  <Text variant="bodyMedium">
                    Falta responder alguma(s) perguntas!
                  </Text>
                </Dialog.Content>
                <Dialog.Actions>
                  <Button onPress={hideDialog}>Fechar</Button>
                </Dialog.Actions>
              </Dialog>
            </View>
          </ScrollView>
        </SafeAreaView>
      </ImageBackground>
    </>
  );
}
