## Get an entity's Motion
#
# @target Any entity
#
# @returns @s motion_x, motion_y, motion_z: three scores storing the entity's Motion, with a 100 scale for precision.

# For players, we can't directly take their Motion, since the server does not have the information.
# See https://bugs.mojang.com/browse/MC-122814
# However, Motion is equal to the current Position minus the last Position from the last tick.
# So we can calculate it by hand.

# Store the old entity's position
scoreboard players operation old pos_x = @s pos_x
scoreboard players operation old pos_y = @s pos_y
scoreboard players operation old pos_z = @s pos_z

# Get new position
execute store result score @s pos_x run data get entity @s Pos[0] 10000
execute store result score @s pos_y run data get entity @s Pos[1] 10000
execute store result score @s pos_z run data get entity @s Pos[2] 10000

# Calculate new Motion, the difference between the position of two ticks
scoreboard players operation @s motion_x = @s pos_x
scoreboard players operation @s motion_y = @s pos_y
scoreboard players operation @s motion_z = @s pos_z

scoreboard players operation @s motion_x -= old pos_x
scoreboard players operation @s motion_y -= old pos_y
scoreboard players operation @s motion_z -= old pos_z
