{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@leaderboard = React.createClass

  render: ->
    div className: "ui container",
      # div className: "ui segment",
      #   ui iconHeader, icon_text: "leaderboard", icon_class: "blue line chart icon"

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
                  for employee in @props.leaderboard
                    tr className:"", key: employee.id,
                        td null, employee.email
                        
                        td null, employee.points
