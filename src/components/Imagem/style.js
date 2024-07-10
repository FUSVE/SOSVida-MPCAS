import { Dimensions, StyleSheet } from "react-native";

const size = Dimensions.get("screen");

export default function style() {
  return StyleSheet.create({
    logo: {
      width: size.width / 4,
      height: 80,
      borderRadius: 30,
    },
  });
}
