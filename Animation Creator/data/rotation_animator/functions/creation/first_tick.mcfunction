## Called on the first tick of path creation
#
# @target The player creating the path
#
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[0]: a NBT tag on the animation data holder, storing initial state of the animation.
#                                      a "modified" tag will be added to the entity, so the system knows an animation was added.
# @returns Nothing if no initial state needs to be set.

# Set the initial rotation to an impossible amount, so rotation is stored on first tick
scoreboard players set @s rotation_h 9999999
scoreboard players set @s rotation_v 9999999