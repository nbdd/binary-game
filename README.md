## Binary Learning Game

This is a game designed to teach how binary works. Its also just a fun group project to learn some new skills like coffeescript, spine.js, and phonegap.

#### Technology
- Coffee-script
- Spine.app
- Hem

#### Screenflow
1. Start screen
2. Stages
3. Levels (within a stage)
4. Game page

#### Game Play
Randomly generated binary 'cards' within parameters:
 1  0   1   0
 -hint-
Make: 12
-check-

#### Data Structures
Stage object
- locked true/false
- # of levels
- # completed
- which is farthest level unlocked

Level class:
- type: reading / writing / logic
- hints: on/off
- attempts allowed
- # of attempts made
- # of digits
- state of the crds
- value
- solved: true/false

#### Levels example:
Level   Type      Attempts   Digits
- 1-1     reading   3         1
- 1-2     writing   3         1
- 1-3     reading   3         2
- 1-4     writing   3         2
- 1-5     reading   3         4
- 1-6     writing   3         4
- 1-7     reading   3         4
- 1-8     writing   3         4
