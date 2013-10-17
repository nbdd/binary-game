Spine = require('spine')

class Stage extends Spine.Model
  # Configure model name & attributes
  @configure 'Stage', 'name', 'number', 'locked', 'lastLevelUnlocked', 'levelCount'

  # Save with HTML5 Local Storage
  @extend @Local

  # Saving records
  stage1 = new Stage(name: '4 digits', number: '1', locked: false, lastLevelUnlocked: '1', levelCount: '0')
  stage1.save()
  stage2 = new Stage(name: '8 digits', number: '2', locked: true, lastLevelUnlocked: '0', levelCount: '0')
  stage2.save()
  stage3 = new Stage(name: 'Arithmatic', number: '3', locked: true, lastLevelUnlocked: '0', levelCount: '0')
  stage3.save()

module.exports = Stage

