Spine = require('spine')
Stage = require('models/stage')
$       = Spine.$

class Levels extends Spine.Controller
  className: 'levels'

  constructor: ->
    super
    @render()

  render: ->
    @html require('views/levels')

  # Adds event listeners
  events:
    'click .play': 'play'

  # Invoked when .play is clicked
  play: (event) ->
    # load the stages objects
    @stages = Stage.all()
    # make 'stages' view when play button is clicked
    @html require("views/stages")(@stages)

module.exports = Levels
