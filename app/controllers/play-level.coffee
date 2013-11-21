Spine = require('spine')
Stage = require('models/stage')
$       = Spine.$

class PlayLevel extends Spine.Controller
  className: 'play-level'

  constructor: ->
    super
    @render()

  render: ->
    @html require('views/play-level')

  # Adds event listeners
  events:
    'click .play': 'play'

  # Invoked when .play is clicked
  play: (event) ->
    # load the stages objects
    @stages = Stage.all()
    # make 'stages' view when play button is clicked
    @html require("views/stages")(@stages)

module.exports = PlayLevel