import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import "bootstrap/dist/css/bootstrap.min.css";

import Item from "./Item";
import Minter from "./Minter";

function App() {

  //const NFTID ="cxia3-w6xac-evbue-2iqm3-lqbcj-3luqd-bpbay-cwka6-6xdsa-hhrm6-kae";
  return (
    <div className="App">
      <Header />
      {/* <Minter/> */}
      {/* <Item id = {NFTID}/> */}
      
      <Footer />
    </div>
  );
}

export default App;
