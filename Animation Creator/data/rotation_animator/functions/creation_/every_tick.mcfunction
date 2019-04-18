## Called each tick by the player creating a path
#
# @target The player creating the path
#
# @param @s time: the number of ticks elapsed since beginning of the path creation
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[-1]: a NBT tag on the animation data holder, storing the new animation frame.
#                                      a "modified" tag will be added to the entity, so the system knows an animation was added.
# @returns Nothing if no animation needs to be added


# This function only purpose is to call rotation_animator:creation/every_tick if the Rotation Animator was selected
execute if entity @s[tag=rotation_animator] run function rotation_animator:creation/every_tick
