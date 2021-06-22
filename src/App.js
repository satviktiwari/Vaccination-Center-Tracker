import React from "react";
import Search from "./Components/Search";

function App() {
  return (
    <React.Fragment>
      <div className="app">
        <div className="app__title">
          <h2>Vaccination Center Tracker</h2>
        </div>
        <Search />
      </div>

      <footer>
        <div className="section">
          <h3>
          "जीतेगा भारत, हारेगा कोरोना" "Dedicated to all Frontline Workers"
          <br/><br/>
          Made By{" "}
            <a href="https://www.github.com/satviktiwari" target="_blank">
              Satvik Tiwari
            </a>
          </h3>
        </div>
      </footer>
    </React.Fragment>
  );
}

export default App;