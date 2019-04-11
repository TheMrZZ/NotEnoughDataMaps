## Called each tick by the player creating a animation
#
# @target The player creating the animation
#
# @param @s time: the number of ticks elapsed since beginning of the animation creation
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[-1]: a NBT tag on the animation data holder, storing the current animation.
#                                      a "modified" tag will be added to the entity, so the system knows an animation was added.
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

# If the motion changed, store it in the data animation holder.
execute if score diff motion_x matches 2.. run function motion_animator:creation/store_motion
execute if entity @s[tag=!motion_changed] if score diff motion_y matches 2.. run function motion_animator:creation/store_motion
execute if entity @s[tag=!motion_changed] if score diff motion_z matches 2.. run function motion_animator:creation/store_motion

# If the motion changed, add the "modified" tag
execute if entity @s[tag=motion_changed] run tag @e[name=anim_data,tag=current] add modified

tag @s remove motion_changed