## Animates an entity. Stops when needed.
#
# @target An entity with the animated tag

scoreboard players add @s time 1

## Check if next animation is planned for the current tick. If it is, run the animators then delete the animation.

# If the next animation is for the current tick, play the animation
execute if score @s next_animation = @s time run function path_drawer:animate/play_next_animation

# Run the every tick functions
function #minecraft:animators/animate/every_tick

# If this is the end of the animation, stop it.
execute if score @s time >= @s animation_time run function path_drawer:animate/stop