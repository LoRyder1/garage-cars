@Garages = React.createClass
  getInitialState: ->
    garages: @props.data
  getDefaultProps: ->
    garages: []
  render: ->
    React.DOM.div
      className: 'garages'
      React.DOM.h2
        className: 'title'
        'Garages'
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Car Type'
        React.DOM.tbody null,
        # for garage in @state.garages
          # React.createElement Garage, key: garage.id, garage: garage

@Garage = React.createClass
  render: ->
    React.DOM.tr null, 
      React.DOM.td null, @props.garage.name
      React.DOM.td null, @props.garage.car_type
      