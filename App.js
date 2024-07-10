import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import * as React from "react";
import { PaperProvider } from "react-native-paper";
import { SafeAreaProvider } from "react-native-safe-area-context";
import { Provider } from "react-redux";
import Answers from "./src/Screens/Answers/Answers";
import Home from "./src/Screens/Home/Home";
import PartOne from "./src/Screens/PartOne/PartOne";
import PartThree from "./src/Screens/PartThree/PartThree";
import PartTwo from "./src/Screens/PartTwo/PartTwo";
import Questions from "./src/Screens/Questions/Questions";
import store from "./src/reducer/store";

const Stack = createNativeStackNavigator();

export default function App() {
  return (
    <SafeAreaProvider>
      <PaperProvider>
        <Provider store={store}>
          <NavigationContainer>
            <Stack.Navigator initialRouteName="Home">
              <Stack.Screen
                name="Home"
                component={Home}
                options={{ headerShown: false }}
              />
              <Stack.Screen
                name="Questions"
                component={Questions}
                options={{ headerShown: false }}
              />
              <Stack.Screen
                name="Answers"
                component={Answers}
                options={{ headerShown: false }}
              />
              <Stack.Screen
                name="PartOne"
                component={PartOne}
                options={{ title: "Parte I", headerShown: false }}
              />
              <Stack.Screen
                name="PartTwo"
                component={PartTwo}
                options={{ title: "Parte II", headerShown: false }}
              />
              <Stack.Screen
                name="PartThree"
                component={PartThree}
                options={{ title: "Parte III", headerShown: false }}
              />
            </Stack.Navigator>
          </NavigationContainer>
        </Provider>
      </PaperProvider>
    </SafeAreaProvider>
  );
}
