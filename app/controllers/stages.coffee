Spine = require('spine')
Stage = require('models/stage')
$ = Spine.$

class Stages extends Spine.Controller
  className: 'stages'

  constructor: ->
    super
    @render()

  render: ->
    items = Stage.all()
    debugger
    @html require('views/stages')(items)

module.exports = Stages
