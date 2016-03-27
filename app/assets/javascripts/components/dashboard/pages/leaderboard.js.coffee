{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@leaderboard = React.createClass
  render: ->
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
