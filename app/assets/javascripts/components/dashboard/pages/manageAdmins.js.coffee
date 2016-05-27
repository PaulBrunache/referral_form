{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@manageAdmins = React.createClass
  render: ->
    div className: "ui segment",
      ui iconHeader, icon_text: "manageAdmins", icon_class: "blue line chart icon"
