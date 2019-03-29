## Called by a player wanting to stop his path creation. Make sure it happens.
#
# @target A player creating a path

# Tag the armor_stand having the same ID than the player
scoreboard players operation current_player id = @s id
execute as @e[name=path_data] if score @s id = current_player id run tag @s add current

# Stop path creation
tag @s remove creating_new_path

scoreboard players set @s path_creator 0

# Call the different animators end function
function #minecraft:animators/creation/last_tick

# Store the animation duration
scoreboard players operation @e[name=path_data,tag=current,limit=1] animation_time = @s time

# Remove the ID from the armorstand - it's not linked to a player anymore
scoreboard players reset @e[name=path_data,tag=current,limit=1] id

# Remove the tag from the current path data holder
tag @e[name=path_data,tag=current] remove current