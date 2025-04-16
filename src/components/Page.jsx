import React from "react";

import MainPage from "./MainPage";
import MenuBar from "./MenuBar";
import Motionlmg from "./MotionImg";

import "../CSS/contents.css"
import "../CSS/Main.css"
import "../CSS/MenuBar.css"


function Page() {
    return (
      <div className="app">
        <MenuBar/>
        <MainPage/>
        <Motionlmg/>
      </div>
    );
  }
  
  export default Page;