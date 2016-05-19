{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@menu = React.createClass

  render: ->
    div id: "menu",
      #hidden left menu
      div className: "ui sidebar vertical menu",
          div className:"item",
            h4 className:"center aligned ui header","Welcome To your refferal panel"
            h1 className: "center aligned ui gray header", i className: "users icon"

          a href: "/admin/dashboard",className:"active item",
            i className: "sitemap icon"
            "Dashboard"

          a href: "/admin/referrals",  className:"item",
            i className: "idea icon"
            "Referrals"

          a href: "/admin/leaderboard", className:"item",
            i className: "sitemap icon"
            "Leaderboard"

          a href: "/admin/manage-admins",  className:"item",
            i className: "settings icon"

            "Manage Admins"
          a href: "/",  className:"item",
            i className: "lock icon"
            "Logout"

      #main left menu
      div id: "admin-menu",className: "ui left fixed vertical labeled icon menu",

        div className:"item",
          h4 className:"center aligned ui header","Welcome To your refferal panel"
          h1 className: "center aligned ui gray header", i className: "users icon"

        a href: "/admin/dashboard",className:"active item",
          i className: "sitemap icon"
          "Dashboard"

        a href: "/admin/referrals",  className:"item",
          i className: "idea icon"
          "Referrals"

        a href: "/admin/leaderboard", className:"item",
          i className: "sitemap icon"
          "Leaderboard"

        a href: "/admin/manage-admins",  className:"item",
          i className: "settings icon"

          "Manage Admins"
        a href: "/sign_out",  className:"item",
          i className: "lock icon"
          "Logout"

      div id: "admin_hidden_menu", className: "ui fixed main menu",
          a className: "launch icon item sidebar-toggle",
            i className: "content icon"," Menu"
