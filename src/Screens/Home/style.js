import { Dimensions, StyleSheet } from "react-native";

const size = Dimensions.get("screen");

const style = StyleSheet.create({
  header: {
    flexDirection: "column",
    alignItems: "center",
  },
  text: {
    fontSize: 35,
    color: "black",
    fontWeight: "bold",
    textAlign: "center",
  },
  image: {
    resizeMode: "cover",
    justifyContent: "center",
    width: size.width,
    height: size.height,
    flexDirection: "column",
    alignItems: "center",
  },
  botao: {
    marginTop: size.height / 3,
    width: size.width / 2,
  },
  botaoPrescritor: {
    marginTop: 10,
    width: size.width / 2,
  },
  botaoNaoPrescritor: {
    marginTop: 10,
    width: size.width / 2,
  },
});

export default style;
