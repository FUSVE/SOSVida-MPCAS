import { Dimensions, StatusBar, StyleSheet } from "react-native";

const size = Dimensions.get("screen");

const style = StyleSheet.create({
  header: {
    flexDirection: "column",
    alignItems: "center",
    marginTop: 20,
  },
  container: {
    flex: 1,
    paddingTop: StatusBar.currentHeight / 2,
  },
  avatar: {
    backgroundColor: "#fbc02d",
    fontWeight: "bold",
    marginTop: 10,
    marginBottom: 15,
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
    color: "#DBA020",
    fontWeight: "bold",
  },
  textSevera: {
    fontSize: 18,
    color: "#FF5E6E",
    fontWeight: "bold",
  },
  button: {
    marginBottom: 50,
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
  card: {
    opacity: 0.7,
    marginBottom: size.height / 8,
    backgroundColor: "#fbc02d",
    margin: 5,
  },
  cardText: {
    color: "black",
    fontWeight: "bold",
    fontSize: 14,
  },
});

export default style;
