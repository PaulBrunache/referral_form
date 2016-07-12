{div, a, h1, h2, h3,h4, p, i, ul, li, table,thead, td, tr, th, tbody, button,label, span, input} = React.DOM
ui = React.createElement
user_indentification = null

@manageAdmins = React.createClass


  updateClicked: (id, e)->
    user_indentification = $('.text span').text()
    $('#update_email').modal('show')




  render: ->
    div className: "ui container",
      div className: "ui segment",
        ui iconHeader, icon_text: "manageAdmins", icon_class: "blue line chart icon"

      div className: "ui modal", id: "reset_password",
        div className: "header",
            "ok"
            div className: "ui form",
              div className: "field",
                label null, "Reset Password"
                input placeholder: user_indentification


      div className: "ui modal", id: "update_email",
        div className: "header",
            "no"
            div className: "ui form",
              div className: "field",
                label null, "Update Email"
                input placeholder: user_indentification

      div className: "ui segment",
        div className: "ui info message",
          div className: "header", "Admin Management Instructions"
            ul className: "list",
              li null, "Select/search for the user in the dropdown"
              li null, "Select Reset or update user"


      div className: "top-table column",
          div className: "ui segments",
            div className: "ui segment",
              h4 className: "ui header", "Admins"
            div className: "ui horizontal segments",
              div className: "ui segment",
                button className: "ui basic red button", onClick: @resetClicked,
                  i className: "icon edit"
                  "Reset Password"
                button className: "ui basic blue button", onClick: @updateClicked,
                  i className: "icon edit"
                  "Update User"
              div className: "ui segment",
                div className: "ui fluid search selection dropdown", id: "user_dropdown",
                  input type:"hidden", name:"user"
                  i className: "dropdown icon"
                  div className: "default text", "Search/Select user"
                  div className: "menu",
                    for user in @props.users
                      div className: "item", 'data-value': user, key: user.id,
                        i className: "user icon"
                        span null, user.email
