**SYSTEM DESIGN OVERVIEW**
This 2D maze platformer game is inspired by Mario. The player navigates through a series of three challenging levels, each containing collectible coins and various hazards. The primary goal is to collect the coins in each level while avoiding enemies and environmental traps. Game encourages spatial awareness and decision-making rathan than random movement.

**Gameplay Mechanics**
**+ Movement:** The player can move left, right, and jump to navigate platforms and mazes
**+ Coin Collection:** Each level has a set number of collectible coins
**+ Lives System:** The player begins with healthbar at 100%. Each time they are hit by a monster, fire, or chainsaw hazard, they take a damage of -25%. When their health is at zero, they lose
**+ Win Condition:** Getting to the exit platform in level three while collecting as much coins as possible
**+ Lose Condition:** Lives reach zero before completing all levels
**+ Checkpoint System:** Reaching the checkpoint saves the player's health, and coins data.

**Collectibles and Hazard Design**

- Coins are distributed around each level
- Fruits are distributed in level 2 and 3, to reset player's health
- Monsters patrol set areas and require avoidance
- A stove's fire is triggered by player's proximity, player must aviod the fire
- Chainsaw hazards create zones the player must carefully navigate around.

**Visual and Audio Feedback**

- Coins provide an audio upon collection
- Fruits rovide an audio upon collection
- Taking damage (via fire, monster or chainsaw) triggers an audio feedback effect
- Background music and sound effects enhance immersion and guide player responses.

**System Structure**

- The game uses a main loop to handle input, rendering, collision detection, and game state updates.
- Levels are structured as separate scenes for easy management and transition
- Player data (health, score) persists across levels until game over/completion
