## Called on the first tick of path creation
#
# @target The player creating the path
#
# @param @e[name=path_data,tag=current]: the path data holder
#
# @returns ArmorItems[0].tag.Path[0]: a NBT tag on the path data holder, storing initial state of the path.
#                                      a Modified:1b tag will be added, so the system knows an animation was added.
# @returns Nothing if no initial state needs to be set.

# First, get the initial motion. We don't care about the motion, but it updates the position of the player.
function motion_animator:creation/get_motion

# We don't set the motion to 0, since the player can start with no motion. Instead, we set an impossible one.
scoreboard players set @s motion_x 999999999
scoreboard players set @s motion_y 999999999
scoreboard players set @s motion_z 999999999