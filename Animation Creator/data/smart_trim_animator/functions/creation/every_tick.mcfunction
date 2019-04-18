## Called each tick by the player creating an animation
#
# @target The player creating the animation
#
# @param @s time: the number of ticks elapsed since beginning of the animation creation
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[-1]: a NBT tag on the animation data holder, storing the current animation.
#                                      a "modified" tag will be added to the entity, so the system knows an animation was added.
# @returns Nothing if no animation needs to be added

# Get the number of recorded frames
execute store result score @s frames_number run data get entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim

# If no frame has been recorded, it means the player didn't do anything for the moment.
# Therefore, we rollback the time to 1.
# However, there is already one frame : the current one.
# Since it might be changed by an animator and therefore recorded, we need to change its time too.
execute if score @s frames_number matches 1 run scoreboard players set @s time 1
execute if score @s frames_number matches 1 run data modify entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Tick set value 1