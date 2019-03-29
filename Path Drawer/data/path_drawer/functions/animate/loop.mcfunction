## Runs 20 times a second. Takes care of entity's animation.

# Remove tag from entities which had their animation stopped last tick
tag @e remove animation_end

# Entities starting an animation
execute as @e[tag=start_animation] at @s run function path_drawer:animate/start

# Entities currently animated
execute as @e[tag=animated] at @s run function path_drawer:animate/main