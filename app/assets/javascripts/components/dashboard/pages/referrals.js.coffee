{div, a, h1, h2, h3,h4, p, i, table,thead, td, tr, th, tbody} = React.DOM
ui = React.createElement

@referrals = React.createClass
  render: ->
    div className: "row", style: {marginTop: '1%'},
      ui iconHeader, icon_text: "referrals", icon_class: "blue line chart icon"
