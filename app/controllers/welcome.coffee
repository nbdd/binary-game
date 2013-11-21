Spine = require('spine')
Stage = require('models/stage')
$       = Spine.$

class Welcome extends Spine.Controller
  className: 'welcome'

  constructor: ->
    super
    @render()

  render: ->
    @html require('views/welcome')

  # Adds event listeners
  events:
    'click .play': 'play'

  # Invoked when .play is clicked
  play: (event) ->
    # load the stages objects
    debugger
    @navigate("/stages")

module.exports = Welcome
