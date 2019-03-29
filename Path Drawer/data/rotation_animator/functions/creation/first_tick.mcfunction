## Called on the first tick of path creation
#
# @target The player creating the path
#
# @param @e[name=path_data,tag=current]: the path data holder
#
# @returns ArmorItems[0].tag.Path[0]: a NBT tag on the path data holder, storing initial state of the path.
#                                      a Modified:1b tag will be added, so the system knows an animation was added.
# @returns Nothing if no initial state needs to be set.
