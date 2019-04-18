## Called on the first tick of path creation
#
# @target The player creating the path
#
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[0]: a NBT tag on the animation data holder, storing the initial state of the animation.
#                                      a "modified" tag will be added to the entity, so the system knows an animation was added.
# @returns Nothing if no initial state needs to be set.

# This function only purpose is to call rotation_animator:creation/first_tick if the Rotation Animator was selected
execute if entity @s[tag=rotation_animator] run function rotation_animator:creation/first_tick
