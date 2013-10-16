Spine = require('spine')
$       = Spine.$

class Welcome extends Spine.Controller
  className: 'welcome'

  constructor: ->
    super
    @render()

  render: ->
    @html require('views/welcome')

  # Spine shortcut for adding event listeners
  # events:
  #   'click .play': play

  # # invoked when .play is clicked
  # play: (event) ->
  #   alert 'you clicked play'

module.exports = Welcome




