{div, a, h1, h2, h3,h4, p, i,label, input} = React.DOM
ui = React.createElement

@home = React.createClass
  render: ->
    div  className: "ui two column middle aligned very relaxed stackable grid",
      div  className: "column",
        div  className: "ui form",
          div  className: "field",
            label null, "Username"
            div  className: "ui left icon input",
              input placeholder:"Username", type:"text"
              i className: "user icon"
          div  className: "field",
            label null, "Password"
            div  className: "ui left icon input",
              input type:"password"
              i className: "lock icon"
          div  className: "ui blue submit button"," Submit"
      div  className: "ui vertical divider", "Or"
      div  className: "center aligned column",
        div  className: "ui big red labeled icon button",
          i className: "signup icon"
          "Administrator"
