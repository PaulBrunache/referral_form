{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody,button} = React.DOM
ui = React.createElement

@featureButton = React.createClass
  render: ->
   button className: "circle-button ui button"
