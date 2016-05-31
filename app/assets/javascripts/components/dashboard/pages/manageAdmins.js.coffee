{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody,img} = React.DOM
ui = React.createElement

@manageAdmins = React.createClass
  render: ->
    div className: "ui container",
      div className: "ui segment",
        ui iconHeader, icon_text: "manageAdmins", icon_class: "blue line chart icon"

      div className: "top-table column",
          div className: "ui segments",
            div className: "ui segment",
              h4 className: "ui header", "Admins"
            div className: "ui segment",
            table className: "ui celled padded table",
              thead null,
                tr null,
                  th className:"ten wide", "Username"
                  th className:"six wide", "Manage"
