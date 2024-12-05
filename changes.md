## Phase 0: Selection, Analysis & Plan

#### Selected Project: Space Invaders

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

- a grid of enemies that moves in sync
- user controlled spaceship that fires bullets
- projectiles that you fire at enemies and they fire at you
- the ability to pause the game
- the ability to reset the game
- number of lives
- higher levels if you destroy all the enemies
- different types of enemies

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.
<br> -Score/game display
<br> -Shields

### Array Usage
How will you be using arrays in this project?

1D Array:
Position of each alien type

2D Array:
An array that contains the position of each alien type that moves in a group except the special alien which only moves along the top row


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
<br> q: resets the level
<br> r: resets the game to level 1
<br> space: pauses the game

Mouse Control:
- Mouse movement: changes the angle of the gun
- Mouse pressed: shoots a bullet

### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS basicEnemy
- Instance variables:
  - Health
  - Speed
  - PVector coordinates
- METHODS
  - collisionCheck
  - display
  - healthUpdate
  - move
    
CLASS healthyEnemy
- Instance variables:
  - Health
  - Speed
  - PVector coordinates
- METHODS
  - collisionCheck
  - display
  - healthUpdate
  - move
    
 CLASS smallEnemy
- Instance variables:
  - Health
  - Speed
  - PVector coordinates
- METHODS
  - collisionCheck
  - display
  - healthUpdate
  - move
    
CLASS specialEnemy
- Instance variables:
  - Health
  - Speed
  - PVector coordinates
    
- METHODS
  - collisionCheck
  - display
  - healthUpdate
  - move
    
CLASS projectile
- Instance variables:
  - PVectors
  - speed
- METHODS
  - collisionCheck
  - display
  - move
 
CLASS shields
- Instance variables:
  - PVectors
  - Alive(boolean)
- METHODS:
  - collisionCheck
  - display
  
