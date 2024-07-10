import { createSlice } from "@reduxjs/toolkit";
import USER_TYPE_ENUM from "../consts/useType";

export const userTypeSlice = createSlice({
  name: "userType",
  initialState: { value: "" },
  reducers: {
    userComum: (state) => {
      state.value = USER_TYPE_ENUM.USER_COMUM;
    },
    userPrescritor: (state) => {
      state.value = USER_TYPE_ENUM.USER_PRESCRITOR;
    },
    userNoPrescritor: (state) => {
      state.value = USER_TYPE_ENUM.USER_NAO_PRESCRITOR;
    },
    incrementeByAmount: (state, action) => {
      state.value = action.payload;
    },
  },
});

export const {
  userComum,
  userPrescritor,
  userNoPrescritor,
  incrementeByAmount,
} = userTypeSlice.actions;

export default userTypeSlice.reducer;
