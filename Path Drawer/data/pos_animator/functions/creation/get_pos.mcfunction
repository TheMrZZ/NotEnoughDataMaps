## Get the entity's position
#
# @target Any entity
#
# @returns @s pos_x, pos_y, pos_z: three scores storing the entity's Position.

execute store result score @s pos_x run data get entity @s Pos[0]
execute store result score @s pos_y run data get entity @s Pos[1]
execute store result score @s pos_z run data get entity @s Pos[2]