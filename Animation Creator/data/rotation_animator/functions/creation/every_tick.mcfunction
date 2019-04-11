## Called each tick by the player creating an animation
#
# @target The player creating the animation
#
# @param @s time: the number of ticks elapsed since beginning of the path creation
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[-1]: a NBT tag on the animation data holder, storing the new animation frame.
#                                      a "modified" tag will be added to the entity, so the system knows an animation frame was added.
# @returns Nothing if no animation needs to be added

# Store old rotation
scoreboard players operation old rotation_h = @s rotation_h
scoreboard players operation old rotation_v = @s rotation_v

# Get new rotation
execute store result score @s rotation_h run data get entity @s Rotation[0] 10000
execute store result score @s rotation_v run data get entity @s Rotation[1] 10000

# Now, check if the rotation has changed.
# We want a change that is greater than one. With the scale, it's 1/10000. It's just to account for the lack of precision. 
# We want the absolute value of the diff.
scoreboard players operation diff rotation_h = @s rotation_h
scoreboard players operation diff rotation_h -= old rotation_h
execute if score diff rotation_h matches ..0 run scoreboard players operation diff rotation_h *= -1 const

scoreboard players operation diff rotation_v = @s rotation_v
scoreboard players operation diff rotation_v -= old rotation_v
execute if score diff rotation_v matches ..0 run scoreboard players operation diff rotation_v *= -1 const

# If the rotation changed, store it in the data animation holder.
execute if score diff rotation_h matches 2.. run function rotation_animator:creation/store_rotation
execute if entity @s[tag=!rotation_changed] if score diff rotation_v matches 2.. run function rotation_animator:creation/store_rotation

execute if entity @s[tag=rotation_changed] run tag @e[name=anim_data,tag=current] add modified

tag @s remove rotation_changed