## Called each tick by the player creating a path
#
# @target The player creating the path
#
# @param @s time: the number of ticks elapsed since beginning of the path creation
# @param @e[name=path_data,tag=current]: the path data holder
#
# @returns ArmorItems[0].tag.Path[-1]: a NBT tag on the path data holder, storing the current animation.
#                                      a Modified:1b tag will be added, so the system knows an animation was added.
# @returns Nothing if no animation needs to be added

# First, save the old motion in a score
scoreboard players operation old motion_x = @s motion_x
scoreboard players operation old motion_y = @s motion_y
scoreboard players operation old motion_z = @s motion_z

# Then, get the motion of the player
function motion_animator:creation/get_motion

# Now, check if the motion has changed.
# We want a change that is greater than one. With the scale, it's 1/10000. It's just to account for the lack of precision. 
# We want the absolute value of the diff.
scoreboard players operation diff motion_x = @s motion_x
scoreboard players operation diff motion_x -= old motion_x
execute if score diff motion_x matches ..0 run scoreboard players operation diff motion_x *= -1 const

scoreboard players operation diff motion_y = @s motion_y
scoreboard players operation diff motion_y -= old motion_y
execute if score diff motion_y matches ..0 run scoreboard players operation diff motion_y *= -1 const

scoreboard players operation diff motion_z = @s motion_z
scoreboard players operation diff motion_z -= old motion_z
execute if score diff motion_z matches ..0 run scoreboard players operation diff motion_z *= -1 const

# If the motion changed, store it in the data path holder.
execute if score diff motion_x matches 2.. run function motion_animator:creation/store_motion
execute if entity @s[tag=!motion_changed] if score diff motion_y matches 2.. run function motion_animator:creation/store_motion
execute if entity @s[tag=!motion_changed] if score diff motion_z matches 2.. run function motion_animator:creation/store_motion

# If the motion changed, set the Modified NBT to 1
execute as @s[tag=motion_changed] run data modify entity @e[name=path_data,tag=current,limit=1] ArmorItems[0].tag.Path[-1].Modified set value 1b

tag @s remove motion_changed