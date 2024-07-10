import { configureStore } from "@reduxjs/toolkit";
import userTypeReducer from "../reducer/userTypeSlice";

export default configureStore({
  reducer: { userType: userTypeReducer },
});
