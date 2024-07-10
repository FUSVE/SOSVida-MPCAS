import React, { useEffect, useState } from "react";
import {
  ImageBackground,
  Linking,
  SafeAreaView,
  ScrollView,
  View,
} from "react-native";
import {
  Button,
  Card,
  IconButton,
  RadioButton as RadioButtonPaper,
  Surface,
  Text,
} from "react-native-paper";
import style from "./style";
import { useSelector } from "react-redux";
import USER_TYPE from "../../consts/useType";

export default function PartThree({ navigation, route }) {
  const [valor, setValor] = useState();
  const [valor2, setValor2] = useState();
  const [somaTotal, setSomaTotal] = useState(0);
  const { somaParte2 } = route.params;
  const userType = useSelector((state) => state.userType.value);
  const uri = require("../../../assets/logo_transparente.png");

  useEffect(() => {
    soma();
  }, [valor, valor2]);

  const ligar = () => {
    Linking.openURL("tel:188");
  };

  const soma = () => {
    let valores = [valor, valor2, somaParte2];
    let soma = 0;
    if (valores.length !== 0) {
      soma = valores
        .filter((value) => value !== undefined)
        .reduce(
          (accumulator, currentValue) => accumulator + currentValue + somaParte2
        );
    }
    if (soma !== undefined) setSomaTotal(soma);
  };

  return (
    <>
      <ImageBackground source={uri} style={style.image}>
        <View style={style.header}>
          <SafeAreaView style={style.container}>
            <ScrollView>
              <View style={style.container}>
                <Text style={style.title}>Parte III</Text>
                <Surface style={style.surface} elevation={5}>
                  <RadioButtonPaper.Group
                    onValueChange={(newValue) => setValor(newValue)}
                    value={valor}
                  >
                    <View style={style.view}>
                      <RadioButtonPaper value={1} color="#fbc02d" />
                      <Text style={style.text}>Tentei suicídio uma vez</Text>
                    </View>
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <RadioButtonPaper value={2} color="#fbc02d" />
                      <Text style={style.text}>
                        Tentei suicídio duas ou mais vezes
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
                        Durante a última tentativa de suicídio, meu desejo de
                        morrer era fraco
                      </Text>
                    </View>
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <RadioButtonPaper value={1} color="#fbc02d" />
                      <Text style={style.text}>
                        Tenho um desejo fraco de morrer
                      </Text>
                    </View>
                    <View
                      style={{ flexDirection: "row", alignItems: "center" }}
                    >
                      <RadioButtonPaper value={2} color="#fbc02d" />
                      <Text style={style.text}>
                        Tenho um desejo de morrer que é de moderado a forte
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
              {userType == USER_TYPE.USER_COMUM && somaParte2 >= 9 && ligar()}

              {userType == USER_TYPE.USER_NAO_PRESCRITOR && somaParte2 >= 9 && (
                <View>
                  <Card style={style.card}>
                    <Card.Content>
                      <Text style={style.cardText}>
                        {`Atividade física supervisionada.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Praticar autocuidado,como ioga e meditação.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Psicoterapia, terapia cognitivo comportamental.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Reduzir acesso a meios letais, como armas de fogo, armas brancas e medicamentos.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Recorrer a rede de suporte, como familiares e amigos para suporte emacional.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Garantir acesso rápido a serviços de creise como CVV(188).\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Buscar atentimento em unidade de saúde de forma imediata.\n`}
                      </Text>
                    </Card.Content>
                  </Card>
                </View>
              )}
              {userType == USER_TYPE.USER_PRESCRITOR && somaParte2 >= 9 && (
                <View>
                  <Card style={style.card}>
                    <Card.Content>
                      <Text style={style.cardText}>
                        {`Atividade física supervisionada.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Praticar autocuidado,como ioga e meditação.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Recomendar psicoterapia, terapia cognitivo comportamenta e interpessoal.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Reduzir acesso a meios letais, como armas de fogo, armas brancas e medicamentos.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Recorrer a rede de suporte, como familiares e amigos para suporte emacional.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Iniciar medicação antidepressiva, baseada nas especificidades e características de cada pasciente.\n`}
                      </Text>
                      <Text style={style.cardText}>
                        {`Em caso de rede de apoio frágil ou inexistente, baixo suporte social, avaliar necessisdade de internação hospitalar.\n`}
                      </Text>
                    </Card.Content>
                  </Card>
                </View>
              )}

              <View style={style.button}>
                <Button
                  style={{ marginBottom: 50 }}
                  buttonColor="#fbc02d"
                  mode="contained"
                  onPress={() => ligar()}
                >
                  Ligar para o CVV
                </Button>
                <Button
                  style={{ marginBottom: 50, marginStart: 5 }}
                  buttonColor="#fbc02d"
                  mode="contained"
                  onPress={() => navigation.navigate("Home")}
                >
                  Finalizar
                </Button>
              </View>
            </ScrollView>
          </SafeAreaView>
        </View>
      </ImageBackground>
    </>
  );
}
