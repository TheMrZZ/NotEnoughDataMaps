## Animates an entity. Stops when needed.
#
# @target An entity with the animated tag

# Add 1 to the time
scoreboard players add @s time 1

# Tags the entity needing to be animated. We find it by checking it's entity_tag, because they should be the same.
scoreboard players operation self entity_id = @s entity_id
execute as @e[tag=can_be_animated] if score @s entity_id = self entity_id run tag @s add current

## Check if next animation is planned for the current tick. If it is, run the animators then delete the animation.

# If the next animation is for the current tick, play the animation
execute if score @s next_animation = @s time run function animation_creator:animate/play_next_animation

# Run the every tick functions
function #minecraft:animators/animate/every_tick

# If this is the end of the animation, stop it.
execute if score @s time >= @s animation_time run function animation_creator:animate/stop

tag @e remove current