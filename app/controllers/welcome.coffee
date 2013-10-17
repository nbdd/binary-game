Spine = require('spine')
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
    # load 'stages' view when play button is clicked
    @html require("views/stages")()

module.exports = Welcome




