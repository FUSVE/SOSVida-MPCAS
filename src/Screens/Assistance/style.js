import { Dimensions, StyleSheet } from "react-native";

const size = Dimensions.get("screen");

const style = StyleSheet.create({
  header: {
    flexDirection: "column",
    alignItems: "center",
    marginTop: size.height / 8,
  },
  avatar: {
    backgroundColor: "black",
    fontWeight: "bold",
    marginTop: 10,
    marginBottom: size.height / 4,
  },
  subtext: {
    fontSize: 24,
    color: "black",
    fontWeight: "bold",
    marginBottom: 50,
  },
  text: {
    fontSize: 18,
    color: "black",
    fontWeight: "bold",
  },
  textLeve: {
    fontSize: 18,
    color: "#665a6f",
    fontWeight: "bold",
  },
  textSevera: {
    fontSize: 18,
    color: "#d32f2f",
    fontWeight: "bold",
  },
  button: {
    marginBottom: 10,
    alignItems: "center",
    flexDirection: "row",
  },
  image: {
    resizeMode: "cover",
    justifyContent: "center",
    width: size.width,
    height: size.height,
    flexDirection: "column",
    alignItems: "center",
  },
});

export default style;
