import { Dimensions, StatusBar, StyleSheet } from "react-native";

const size = Dimensions.get("screen");

const style = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: StatusBar.currentHeight / 2,
  },
  title: {
    fontSize: 25,
    textAlign: "center",
    fontWeight: "bold",
  },
  radioGroup: {
    fontSize: 20,
  },
  text: {
    padding: 3,
    fontWeight: "bold",
    marginRight: 5,
  },
  view: {
    flexDirection: "row",
    alignItems: "center",
  },
  surface: {
    padding: 25,
    marginLeft: 5,
    marginRight: 5,
    marginTop: 5,
    marginBottom: 5,
    alignItems: "justify",
    justifyContent: "justify",
    borderTopEndRadius: 20,
    borderTopStartRadius: 20,
    borderBottomLeftRadius: 20,
    borderBottomRightRadius: 20,
    backgroundColor: "#f5f1a4",
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
