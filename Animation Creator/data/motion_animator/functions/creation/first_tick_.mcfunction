## Called on the first tick of animation creation
#
# @target The player creating the animation
#
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[0]: a NBT tag on the animation data holder, storing initial state of the animation.
#                                      a "modified" tag will be added to the entity, so the system knows an animation was added.
# @returns Nothing if no initial state needs to be set.

# This function only purpose is to call motion_animator:creation/first_tick if the Motion Animator was selected
execute if entity @s[tag=motion_animator] run function motion_animator:creation/first_tick
