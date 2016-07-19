{div, a, h1, h2, h3,h4, p, i, ul, li, table,thead, td, tr, th, tbody, button,label, span, p, input} = React.DOM
ui = React.createElement



@manageAdmins = React.createClass

  getInitialState: ->
    user_indentification: ''
    flash_message: ''
    message_type: ''
    
    
  resetClicked: ->
    @setState user_indentification:  $('.text span').text()
    $('#reset_password').modal('show')
    
  updateClicked: ->
    @setState user_indentification: $('.text span').text()
    $('#update_email').modal('show')
    
    
  sendPasswordReset: (e)->
    e.preventDefault()
    $.ajax
        type: 'POST'
        url: "/reset_admin"
        data: 
          email: @state.user_indentification
        dataType: 'JSON'
        success:(data) =>
          for key, val of data
            @setState flash_message: val
            @setState message_type: "success"
            break
        error:(data) =>
          @setState flash_message: "Something went wrong. Please select a user and try again"
          @setState message_type: "error"
        
            
  render: ->
    div className: "ui container",
      if @state.flash_message
        ui flashMessage, message_type: @state.message_type, message: @state.flash_message
      div className: "ui segment",
        ui iconHeader, icon_text: "manageAdmins", icon_class: "blue line chart icon"

      div className: "ui modal small transition", id: "reset_password",
        div className: "header", "Reset Account password"
      
        div className: "content", 
          p null, "Are you sure you want to reset the account password for " + @state.user_indentification
      
        div className: "actions",
          div className: "ui negative button", 
            "No"
          
          div className: "ui positive right labeled icon button", onClick: @sendPasswordReset,
            "Yes"
            i className:"checkmark icon"
          

      div className: "ui modal", id: "update_email",
        div className: "header",
            "no"
            div className: "ui form",
              div className: "field",
                label null, "Update Email"
                input placeholder: "Nothing"

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
