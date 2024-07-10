import { Dimensions, StatusBar, StyleSheet } from "react-native";

const size = Dimensions.get("screen");

const style = StyleSheet.create({
  header: {
    flexDirection: "column",
  },
  radioGroup: {
    fontSize: 20,
  },
  text: {
    fontWeight: "bold",
  },
  check: {
    color: "#fbc02d",
  },
  image: {
    resizeMode: "cover",
    justifyContent: "center",
    width: size.width,
    height: size.height,
    flexDirection: "column",
    alignItems: "center",
  },
  container: {
    flex: 1,
    paddingTop: StatusBar.currentHeight,
  },
  title: {
    fontSize: 25,
    textAlign: "center",
    fontWeight: "bold",
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
});

export default style;
