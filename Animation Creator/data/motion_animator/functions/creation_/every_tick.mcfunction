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


# This function only purpose is to call motion_animator:creation/every_tick if the Motion Animator was selected
execute if entity @s[tag=motion_animator] run function motion_animator:creation/every_tick
