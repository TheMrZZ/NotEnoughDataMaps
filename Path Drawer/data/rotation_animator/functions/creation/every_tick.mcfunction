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

