require('lib/setup')

Spine = require('spine')
Stack = require('spine/lib/manager').Stack;
Welcome = require('controllers/welcome')
Stages = require('controllers/stages')
Stage = require('models/stage')
Levels = require('controllers/levels')
PlayLevel = require('controllers/play-level')

class App extends Stack
	controllers:
	    welcome: Welcome
	    stages: Stages
	    levels: Levels
	    playLevel: PlayLevel

  	routes:
	    '/welcome': 'welcome'
	    '/stages':  'stages'
	    '/stage/:id': (params) ->
	    	console.log "going to stage #{params.id}"
	   	'/level/:id': (params) ->

	default: 'welcome'

Spine.Route.setup()

# Saving records
stage1 = new Stage(name: '4 digits', number: '1', locked: false, lastLevelUnlocked: '1', levelCount: '0')
stage1.save()
stage2 = new Stage(name: '8 digits', number: '2', locked: true, lastLevelUnlocked: '0', levelCount: '0')
stage2.save()
stage3 = new Stage(name: 'Arithmatic', number: '3', locked: true, lastLevelUnlocked: '0', levelCount: '0')
stage3.save()

module.exports = App
