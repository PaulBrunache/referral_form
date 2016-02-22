{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@dashboard = React.createClass
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

        a href: "#",  className:"active item",
          i className: "sitemap icon"
          "Leaderboard"
        a href: "#",  className:"item",
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
            i className: "blue line chart icon"
            "Leaderboard"
        div className: "row",
          div className: "top-table column",
            div className: "ui segments",
              div className: "ui segment",
                h4 className: "ui header", "Employee Point Ranking"
              div className: "ui segment",
              table className: "ui celled padded table",
                thead null,
                  tr null,
                    th className:"ten wide", "Employee"
                    th className:"six wide", "Points"
                tbody null,
                  tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "Tiff"
                        div className: "sub header",
                          "human Resources"
                    td null, "500"
                  tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "Michael"
                        div className: "sub header",
                          "Marketing Resources"
                    td null, "400"
                  tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "Kayla"
                        div className: "sub header",
                          "Retention Resources"
                    td null, "300"
                  tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "Sarah"
                        div className: "sub header",
                          "Tech Resources"
                    td null, "200"
                  tr null,
                    td null,
                      h4 className: "ui header",
                      div className: "content",
                        "James"
                        div className: "sub header",
                          "Tech Resources"
                    td null, "100"
