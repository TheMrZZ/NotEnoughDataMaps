## Called by a player needing help on the animator
#
# @target a Player

tellraw @s [{"text":"============ [Smart Trim Animator] ============", "color": "gray"}]
tellraw @s [{"text":"This animator \"trims\" your animation.\n", "underlined": true}]
tellraw @s [{"text":"> This means that when you start recording, the first ticks during which you didn't move will be removed."}]
tellraw @s [{"text":"> This is also true for the last ticks of the animation: if you didn't move during them, they will be removed.\n"}]
tellraw @s [{"text":"Tip: ", "color": "yellow"},{"text":"You should not use this with the Synchronisation Animator, since it will remove some ticks and might desynchronize the animation.", "color": "white"}]
tellraw @s [{"text":"=========================================", "color": "gray"}]
