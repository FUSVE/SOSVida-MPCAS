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
    if (answer >= 11) showDialog();
  }, []);

  const renderMessage = () => {
    if (userType === USER_TYPE_ENUM.USER_COMUM) {
      if (answer <= 10) {
        return (
          <Card style={style.card}>
            <Card.Content>
              <Card.Title title="Recomendações" />
              <Text style={style.cardText}>
                Atividade física supervisionada
              </Text>
              <Text style={style.cardText}>
                Praticar auto cuidado, como meditação e ioga
              </Text>
              <Text style={style.cardText}>Alimentação saudável</Text>
              <Text style={style.cardText}>
                Conviver com pessoas que lhe transmitam paz e felicidade
              </Text>
              <Text style={style.cardText}>Contato com a natureza</Text>
              <Text style={style.cardText}>
                Se necessário, realizar psicoterapia
              </Text>
            </Card.Content>
          </Card>
        );
      } else {
        return (
          <Card style={style.card}>
            <Card.Content>
              <Card.Title title="Recomendações" />
              <Text style={style.cardText}>
                Procurar por auxílio de equipe de saúde mental (psiquiatra/psicólogo) o mais breve possível
              </Text>
            </Card.Content>
          </Card>
        );
      }
    }

    if (userType === USER_TYPE_ENUM.USER_NAO_PRESCRITOR) {
      if (answer <= 10) {
        return (
          <Card style={style.card}>
            <Card.Content>
              <Card.Title title="Recomendações" />
              <Text style={style.cardText}>
                Atividade física supervisionada
              </Text>
              <Text style={style.cardText}>
                Praticar auto cuidado, como meditação e ioga
              </Text>
              <Text style={style.cardText}>Alimentação saudável</Text>
              <Text style={style.cardText}>
                Conviver com pessoas que lhe transmitam paz e felicidade
              </Text>
              <Text style={style.cardText}>Contato com a natureza</Text>
              <Text style={style.cardText}>
                Se necessário, realizar psicoterapia
              </Text>
            </Card.Content>
          </Card>
        );
      } else {
        return (
          <Card style={style.card}>
            <Card.Content>
              <Card.Title title="Recomendações" />
              <Text style={style.cardText}>
                Atividade física supervisionada
              </Text>
              <Text style={style.cardText}>
                Praticar autocuidado, como ioga e meditação
              </Text>
              <Text style={style.cardText}>
                Psicoterapia, terapia cognitivo comportamental
              </Text>
              <Text style={style.cardText}>
                Reduzir acesso a meios letais, como armas de fogo, armas brancas, medicamentos
              </Text>
              <Text style={style.cardText}>
                Recorrer a rede de suporte, como familiares e amigos para suporte emocional
              </Text>
              <Text style={style.cardText}>
                Garantir acesso rápido a serviços de crise como CVV (188)
              </Text>
              <Text style={style.cardText}>
                Buscar atendimento em unidade de saúde de forma imediata
              </Text>
              <Text style={style.cardText}>
                Notificação à equipe de saúde mental
              </Text>
            </Card.Content>
          </Card>
        );
      }
    }

    if (userType === USER_TYPE_ENUM.USER_PRESCRITOR) {
      if (answer <= 9) {
        return (
          <Card style={style.card}>
            <Card.Content>
              <Card.Title title="Recomendações" />
              <Text style={style.cardText}>
                Atividade física supervisionada
              </Text>
              <Text style={style.cardText}>
                Praticar auto cuidado, como meditação e ioga
              </Text>
              <Text style={style.cardText}>Alimentação saudável</Text>
              <Text style={style.cardText}>
                Conviver com pessoas que lhe transmitam paz e felicidade
              </Text>
              <Text style={style.cardText}>Contato com a natureza</Text>
              <Text style={style.cardText}>
                Se necessário, realizar psicoterapia
              </Text>
            </Card.Content>
          </Card>
        );
      } else {
        return (
          <Card style={style.card}>
            <Card.Content>
              <Card.Title title="Recomendações" />
              <Text style={style.cardText}>
                Atividade física supervisionada
              </Text>
              <Text style={style.cardText}>
                Praticar autocuidado como ioga e meditação
              </Text>
              <Text style={style.cardText}>
                Recomendar psicoterapia, terapia cognitivo comportamental e interpessoal
              </Text>
              <Text style={style.cardText}>
                Reduzir acesso a meios letais como armas de fogo, armas brancas, medicamentos
              </Text>
              <Text style={style.cardText}>
                Recorrer a rede de suporte, como familiares e amigos para suporte emocional
              </Text>
              <Text style={style.cardText}>
                Iniciar medicação antidepressiva, baseada nas especificidades e características de cada paciente
              </Text>
              <Text style={style.cardText}>
                Em caso de rede de apoio frágil ou inexistente, baixo suporte social, avaliar necessidade de internação hospitalar
              </Text>
            </Card.Content>
          </Card>
        );
      }
    }

    return null;
  };

  const renderButtons = () => {
    if (userType === USER_TYPE_ENUM.USER_COMUM && answer <= 9) {
      return (
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
        </View>
      );
    }

    if ( answer > 9) {
      return (
        <View style={style.button}>
          <Button
            style={{ marginStart: 5 }}
            buttonColor="#fbc02d"
            rippleColor="white"
            mode="contained"
            onPress={() => navigation.navigate("PartOne")}
          >
            Avançar
          </Button>
        </View>
      );
    }

    if (answer <= 9) {
      return (
        <View style={style.button}>
          <Button
            buttonColor="#fbc02d"
            mode="contained"
            rippleColor="white"
            onPress={() => navigation.navigate("Home")}
          >
            Finalizar
          </Button>
        </View>
      );
    }

    return null;
  };

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
                {renderMessage()}
                {renderButtons()}
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
