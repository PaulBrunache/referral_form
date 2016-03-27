{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@menu = React.createClass

  getInitialState: ->
    current_page: @props.data

    
  viewLinkClicked: (x)->
    console.log(x)
    
    
  render: ->
    div className: "ui grid container",
      #hidden left menu
      div className: "ui sidebar vertical menu",
          a href: "#",  className:"item",
            h4 className: "ui gray header", "Username"
            p null, "logout"
          a href: "#",  className:"item",
            i className: "home icon"
            "Home"
          a href: "#",  className:"item",
            i className: "home icon"
            "Home"

      #main left menu
      div id: "admin-menu",className: "ui left fixed vertical labeled icon menu",

        a href: "#",  className:"item",
          h4 className:"center aligned ui header","Welcome To your refferal panel"
          h1 className: "center aligned ui gray header", i className: "users icon"

        a href: "/admin/dashboard",  className:"active item", onClick: @viewLinkClicked ->"hello",
         
          " Dashboard "
          
        a href: "#",  className:"item", onClick: @viewLinkClicked ,
       
          " Referrals "
          
        a href: "#",  className:"item", onClick: @viewLinkClicked ,
          
         
          " Manage Admins "
          
        a href: "/",  className:"item", onClick: @viewLinkClicked ,
     
          " Logout "
          
      div id: "admin_hidden_menu", className: "ui fixed main menu",
          a className: "launch icon item sidebar-toggle",
            i className: "content icon"," Menu"
