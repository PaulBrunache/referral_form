{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@dashboard = React.createClass
  getInitialState: ->
    current_page: @props.data
  getDefaultProps: ->
    current_page: "dashboard"
  menuItemClicked: (x)->
    console.log(x + " Has been clicked")
  render: ->
    div className: "ui grid container",
      ui menu,
        linkClicked: @menuItemClicked
      div className: "ui main grid",
        ui iconHeader, icon_text: "Leaderboard", icon_class: "blue line chart icon"
        ui leaderboard