require('lib/setup')

Spine = require('spine')
Welcome = require('controllers/welcome')

class App extends Spine.Controller
  constructor: ->
    super
    @welcome = new Welcome
    @append @welcome

  # Spine.Route.setup()

module.exports = App
