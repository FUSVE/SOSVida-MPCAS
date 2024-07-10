import { useState } from "react";
import { View } from "react-native";
import {
  RadioButton as RadioButtonPaper,
  Surface,
  Text,
} from "react-native-paper";
import style from "./style";

export default function RadioButton({ childreToParetent, pergunta, yes, no }) {
  const [checkd, setChecked] = useState();

  return (
    <Surface style={style.surface} elevation={5}>
      <RadioButtonPaper.Group
        onValueChange={(newValue) => {
          childreToParetent(newValue);
          setChecked(newValue);
        }}
        value={checkd}
      >
        <Text style={style.text}>{pergunta}</Text>
        <View style={{ flexDirection: "row", alignItems: "center" }}>
          <RadioButtonPaper.Android value={yes} color="#fbc02d" />
          <Text style={style.text}>Sim</Text>
          <RadioButtonPaper.Android value={no} color="#fbc02d" />
          <Text style={style.text}>Não</Text>
        </View>
      </RadioButtonPaper.Group>
    </Surface>
  );
}
