import React from "react";
import ReactDOM from "react-dom";

class TodoApp extends React.Component {
  render() {
    return (
      <div className="row">
        <p>TodoApp</p>
      </div>
    );
  }
}

document.addEventListener("turbolinks:load", () => {
  const app = document.getElementById("todo-app");
  app && ReactDOM.render(<TodoApp />, app);
});
