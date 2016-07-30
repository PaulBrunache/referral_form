{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@flashMessage = React.createClass
  render: ->
   div className: "ui segment",
      div className: "ui large #{@props.message_type} middle aligned message", @props.message
        