## Called by a player needing help on the animator
#
# @target a Player

tellraw @s [{"text":"============ [Motion Animator] ============", "color": "gray"}]
tellraw @s [{"text":"The Motion Animator allows the entity to perfectly and seamlessly recreate your movements."}]
tellraw @s [{"text":"\nThese movements are relative.\nThis means that moving the created entity from 1 block to the left will move the whole animation one block to the left !"}]
tellraw @s [{"text":"=========================================", "color": "gray"}]