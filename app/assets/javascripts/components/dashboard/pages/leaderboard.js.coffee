{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement
@leaderboard = React.createClass

render: ->
  div className: "row",
      ui iconHeader, icon_text: "leaderboard", icon_class: "blue line chart icon"
