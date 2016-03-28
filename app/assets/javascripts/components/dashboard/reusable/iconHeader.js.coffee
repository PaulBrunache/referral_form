{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@iconHeader = React.createClass
  render: ->
    h2 className: "ui center aligned icon header",
      i className: @props.icon_class
      @props.icon_text
