## Plays the next animation, then remove it from the list.
#
# @target an animated entity, needing to play the next animation

# Run the different animators
function #minecraft:animators/animate/new_animation

# Remove the animation from the stack
data remove entity @s ArmorItems[0].tag.Current[0]

# Get the tick of the next animation
execute store result score @s next_animation run data get entity @s ArmorItems[0].tag.Current[0].Tick