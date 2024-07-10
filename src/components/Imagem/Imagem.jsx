import React from "react";
import { Image } from "react-native";
import style from "./style";

export default function Imagem({ uri }) {
  return (
    <>
      <Image source={uri} style={style.logo} />
    </>
  );
}
