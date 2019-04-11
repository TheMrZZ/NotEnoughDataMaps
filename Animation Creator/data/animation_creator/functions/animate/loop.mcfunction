## Runs 20 times a second. Takes care of entity's animation.
#
# @target An armorstand named "animated", meaning he's holding information about an animation

# Remove tag from entities which had their animation stopped last tick
tag @s remove animation_end

# Entities starting an animation
execute as @s[tag=start] run function animation_creator:animate/start

# Entities currently animated
execute as @s[tag=animated] run function animation_creator:animate/main