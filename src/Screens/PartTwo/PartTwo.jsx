import React, { useEffect, useState } from "react";
import { ScrollView, View, ImageBackground, SafeAreaView } from "react-native";
import {
  Button,
  RadioButton as RadioButtonPaper,
  Surface,
  Text,
} from "react-native-paper";
import style from "./style";

export default function PartTwo({ navigation, route }) {
  const [valor, setValor] = useState();
  const [valor2, setValor2] = useState();
  const [valor3, setValor3] = useState();
  const [valor4, setValor4] = useState();
  const [valor5, setValor5] = useState();
  const [valor7, setValor7] = useState();
  const [valor8, setValor8] = useState();
  const [valor9, setValor9] = useState();
  const [valor10, setValor10] = useState();
  const [valor11, setValor11] = useState();
  const [valor12, setValor12] = useState();
  const [valor13, setValor13] = useState();
  const [valor14, setValor14] = useState();
  const [valor15, setValor15] = useState();
  const [somaTotal, setSomaTotal] = useState(0);
  const uri = require("../../../assets/logo_transparente.png");
  const { somaParte1 } = route.params;
  useEffect(() => {
    soma();
  }, [
    valor,
    valor2,
    valor3,
    valor4,
    valor5,
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

  const soma = () => {
    let valores = [
      valor,
      valor2,
      valor3,
      valor4,
      valor5,
      valor7,
      valor8,
      valor9,
      valor10,
      valor11,
      valor12,
      valor13,
      valor14,
      valor15,
      somaParte1,
    ];
    let soma = 0;
    if (valores.length !== 0) {
      soma = valores
        .filter((value) => value !== undefined)
        .reduce(
          (accumulator, currentValue) => accumulator + currentValue + somaParte1
        );
    }
    if (soma !== undefined) setSomaTotal(soma);
  };

  return (
    <>
      <ImageBackground source={uri} style={style.image}>
        <SafeAreaView style={style.container}>
          <ScrollView>
            <View style={style.container}>
              <Text style={style.title}>Parte II</Text>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor(newValue);
                  }}
                  value={valor}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho breves períodos com a ideia de me matar que passam
                      rapidamente
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho períodos que ideia de me matar que duram algum tempo
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho longos períodos com ideia de me matar
                    </Text>
                  </View>
                  {valor !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>

            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor2(newValue);
                  }}
                  value={valor2}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Raramente ou ocasionalmente penso em me matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho ideias frequentes de me matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Penso constantemente em me matar
                    </Text>
                  </View>
                  {valor2 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor2()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>

            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor3(newValue);
                  }}
                  value={valor3}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não aceito a ideia de me matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Não aceito, nem rejeito, a ideia de me matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>Aceito a ideia de me matar</Text>
                  </View>
                  {valor3 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor3()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>

            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor4(newValue);
                  }}
                  value={valor4}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Consigo me controlar quando a cometer suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Não estou certo se consigo me controlar quanto a cometer
                      suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Não consigo me controlar quanto a cometer suicídio
                    </Text>
                  </View>
                  {valor4 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor4()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>

            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor5(newValue);
                  }}
                  value={valor5}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Eu não ne mataria por causa da minha família, de meus
                      amigos, de minha religião, de um possível dano por uma
                      tentativa malsucedida etc
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Eu estou um tanto preocupado a respeito de me matar por
                      causa da minha família, de meus amigos, de minha religião,
                      de um possível dano por uma tentativa malsucedida etc
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Eu não estou ou estou só um pouco preocupado a respeito de
                      me matar por causa da minha família, de meus amigos, de
                      minha religião, de um possível dano por uma tentativa
                      malsucedida etc
                    </Text>
                  </View>
                  {valor5 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor5()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>

            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor7(newValue);
                  }}
                  value={valor7}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Minhas razões para cometer suicídio têm em vista
                      principalmente influenciar os utros, como conseguir me
                      vingar das pessoas, torna-las mais felizes, fazê-las
                      prestar mais atenção em mim etc
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Minhas razões para querer cometer suicídio não têm em
                      vista apenas influenciar os outros, mas também representam
                      uma maneira de solucionar meus problemas
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Minhas razões para querer cometer suicídio se baseiam
                      preincipalmente numa fuga de meus problemas
                    </Text>
                  </View>
                  {valor7 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor7()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor8(newValue);
                  }}
                  value={valor8}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não tenho plano especifico sobre como me matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho considerado maneiras de me matar, mas não eleborei
                      detalhes
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho um plano especifico para me matar
                    </Text>
                  </View>
                  {valor8 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor8()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor9(newValue);
                  }}
                  value={valor9}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não tenho acesso a um método ou uma oportunidade de me
                      matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      O método que usario para cometer suicídio leva tempo e
                      realmente não tenho um boa oportunidade de usá-lo
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho ou espero ter acesso ao método que escolheria para
                      me matar e, também, tenho ou teria oportunidade de usá-lo
                    </Text>
                  </View>
                  {valor9 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor9()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor10(newValue);
                  }}
                  value={valor10}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não tenho coragem ou a capacidade para cometer suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Não estou certi se tenho coragem ou a capacidade para
                      cometer suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho a coragem e a capacidade para cometer suicídio
                    </Text>
                  </View>
                  {valor10 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor10()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor11(newValue);
                  }}
                  value={valor11}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não espero fazer uma tentativa de suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Não estou certo de que farei uma tentativa de suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Estou certo de que farei uma tentativa de suicídio
                    </Text>
                  </View>
                  {valor11 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor11()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor12(newValue);
                  }}
                  value={valor12}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Eu não fiz preparativos para cometer suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho feito alguns preparativos para cometer suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Meus preparativos para cometer suicídio já estão quase
                      prontos ou completos
                    </Text>
                  </View>
                  {valor12 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor12()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor13(newValue);
                  }}
                  value={valor13}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não escrevi um bilhete suicida
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho pensado em escrever um bilhete suicida ou comecei a
                      escrever, mas não terminei
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho um bilhete suicida pronto
                    </Text>
                  </View>
                  {valor13 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor13()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor14(newValue);
                  }}
                  value={valor14}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não tomei providências em relação ao que acontecerá depois
                      que eu tiver cometido suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho pensado em tomar algumas providências em relação ao
                      que acontecerá depois que eu tiver cometido suicídio
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tomei providências definidas em relação ao que acontecerá
                      depois que eu tiver cometido suicídio
                    </Text>
                  </View>
                  {valor14 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor14()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View>
              <Surface style={style.surface} elevation={5}>
                <RadioButtonPaper.Group
                  onValueChange={(newValue) => {
                    setValor15(newValue);
                  }}
                  value={valor15}
                >
                  <View style={style.view}>
                    <RadioButtonPaper value={0} color="#fbc02d" />
                    <Text style={style.text}>
                      Não tenho escondido das pessoas o meu desejo de me matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={1} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho evitado contar as pessoas sobre a vontade de me
                      matar
                    </Text>
                  </View>
                  <View style={{ flexDirection: "row", alignItems: "center" }}>
                    <RadioButtonPaper value={2} color="#fbc02d" />
                    <Text style={style.text}>
                      Tenho tentado não revelar, esconder ou mentir sobre a
                      vontade cometer suicídio
                    </Text>
                  </View>
                  {valor15 !== undefined && (
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <Button
                        mode="text"
                        textColor="black"
                        onPress={() => setValor15()}
                      >
                        Limpar
                      </Button>
                    </View>
                  )}
                </RadioButtonPaper.Group>
              </Surface>
            </View>
            <View style={{ alignItems: "center" }}>
              <Button
                style={{ marginBottom: 50 }}
                buttonColor="#fbc02d"
                mode="contained"
                onPress={() =>
                  navigation.navigate("PartThree", { somaParte2: somaTotal })
                }
              >
                Avançar
              </Button>
            </View>
          </ScrollView>
        </SafeAreaView>
      </ImageBackground>
    </>
  );
}
