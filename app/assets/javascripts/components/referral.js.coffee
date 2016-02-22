{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody, select, option} = React.DOM
ui = React.createElement

@referral = React.createClass
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
      div id: "admin-menu",className: "ui left fixed vertical menu",

        a href: "#",  className:"item",
          h4 className:"center aligned ui header","Welcome To your refferal panel"
          h1 className: "center aligned ui gray header", i className: "users icon"

        a href: "/admin/dashboard",  className:"active item",
          i className: "sitemap icon"
          "Leaderboard"
        a href: "/admin/referral",  className:"item",
          "Referrals"
          div className: "ui blue label", "7"
        a href: "#",  className:"item",
          i className: "settings icon"
          "Manage Admins"
        a href: "/",  className:"item",
          i className: "lock icon"
          "Logout"
      div id: "admin_hidden_menu", className: "ui fixed main menu",
          a className: "launch icon item sidebar-toggle",
            i className: "content icon"," Menu"

      div className: "ui main grid",
        div className: "row",
          h2 className: "ui center aligned icon header",
            i className: "blue add user icon"
            "Referrals"
        div className: "row",
          div className: "top-table column",
            div className: "ui segments",
              div className: "ui segment",
                h4 className: "ui header", "Referrals"
              div className: "ui segment",
              table className: "ui celled padded table",
                thead null,
                  tr null,
                    th className:"five wide", "Referral Name"
                    th className:"five wide", "Email"
                    th className:"six wide", "Status"
                tbody null,
                  tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "hellen Campbell"
                    td null, 
                      h4 className: "ui header",
                      div className: "content",
                        "hellen@example.com"
                    td null, 
                      select className: "ui dropdown",
                        option value: 1, "contacted"
                        option value: 1, "Pending Interview"
                        option value: 1, "Hired"
                   tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "Tiff Thompson"
                    td null, 
                      h4 className: "ui header",
                      div className: "content",
                        "Tiff@example.com"
                    td null, 
                      select className: "ui dropdown",
                        option value: 1, "contacted"
                        option value: 1, "Pending Interview"
                        option value: 1, "Hired"
                   tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "Jame Tough"
                    td null, 
                      h4 className: "ui header",
                      div className: "content",
                        "Jame@example.com"
                    td null, 
                      select className: "ui dropdown",
                        option value: 1, "contacted"
                        option value: 1, "Pending Interview"
                        option value: 1, "Hired"
           