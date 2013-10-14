require('lib/setup')

Spine = require('spine')
Welcome = require('controllers/welcome')

class App extends Spine.Controller
  constructor: ->
    super
    @welcome = new Welcome

  # Spine.Route.setup()

module.exports = App
