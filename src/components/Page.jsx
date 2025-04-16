import React from "react";

import MainPage from "./MainPage";
import MenuBar from "./MenuBar";

import "../CSS/Main.css";
import "../CSS/MenuBar.css";


function Page() {
    return (
      <div className="app">
        <MenuBar/>
        <MainPage/>
      </div>
    );
  }
  
  export default Page;