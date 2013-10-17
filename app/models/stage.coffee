Spine = require('spine')

class Stage extends Spine.Model
  # Configure model name & attributes
  @configure 'Stage', 'name', 'number', 'locked', 'lastLevelUnlocked', 'levelCount'

  # Save with HTML5 Local Storage
  @extend @Local

module.exports = Stage

