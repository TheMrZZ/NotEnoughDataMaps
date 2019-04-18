## Called by a player needing help on the animator
#
# @target a Player

tellraw @s [{"text":"============ [Loop Animator] ============", "color": "gray"}]
tellraw @s [{"text":"This animator perfectly loops your animations.\n", "underlined": true}]
tellraw @s [{"text":"> It will force the animated entity to stop at the exact place it started."}]
tellraw @s [{"text":"> If, as a player, you end up too far from the starting place, the entity will looks like it's being teleported."}]
tellraw @s [{"text":"=========================================", "color": "gray"}]
