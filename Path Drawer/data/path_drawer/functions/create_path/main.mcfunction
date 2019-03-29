## Called each tick for each player creating a path. Create a new animation frame.
#
# @target A player with the creating_new_path tag
# 
# @param @param @e[name=path_data]: all path data holders. They all have an ID, matching the ID of a player.
#
# @returns ArmorItems[0].tag.Path[-1]: a new animation if needed.
# @returns Nothing if no animation is needed.

# Increment time
scoreboard players add @s time 1

# Tag the armor_stand having the same ID than the player
scoreboard players operation current_player id = @s id
execute as @e[name=path_data] if score @s id = current_player id run tag @s add current

# Create the animation, with the right tick set.
data modify entity @e[name=path_data,tag=current,limit=1] ArmorItems[0].tag.Path append value {Tick:0}
execute store result entity @e[name=path_data,tag=current,limit=1] ArmorItems[0].tag.Path[-1].Tick int 1 run scoreboard players get @s time

# Call the animators
function #minecraft:animators/creation/every_tick

# If no animator acted on the current animation, remove it.
execute as @e[name=path_data,tag=current,limit=1] unless data entity @s ArmorItems[0].tag.Path[-1].Modified run data remove entity @s ArmorItems[0].tag.Path[-1]

# Remove the tag from the current path data holder
tag @e[name=path_data,tag=current] remove current