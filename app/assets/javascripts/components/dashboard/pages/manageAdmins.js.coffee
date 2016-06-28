{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody, button,label, input} = React.DOM
ui = React.createElement

@manageAdmins = React.createClass

  resetClicked: (id, e)->
    $('.ui.modal').modal('show')

  updateClicked: (e)->
    console.log(e)


  render: ->
    div className: "ui container",
      div className: "ui segment",
        ui iconHeader, icon_text: "manageAdmins", icon_class: "blue line chart icon"
      div className: "ui modal",
        div className: "header",
            "Hello"
            div className: "ui form",
              div className: "field",
                label null, "Update User Email"
                input placeholder: "@props.identification"
      div className: "top-table column",
          div className: "ui segments",
            div className: "ui segment",
              h4 className: "ui header", "Admins"
            div className: "ui segment",
            table className: "ui celled padded table",
              thead null,
                tr null,
                  th className:"six wide", "Username"
                  th className:"ten wide", "Manage"
              tbody null,
                for user in @props.users
                  tr className: "center aligned", key: user.id,
                    td null,
                      h4 null, user.email
                    td null,
                        button className: "ui red basic button", onClick: @resetClicked.bind(@,user.email),
                          i className: "icon edit"
                          "Reset Password"
                        button className: "ui blue basic button", onClick: @updateClicked.bind(@,user.email),
                          i className: "icon edit"
                          "Update User"
