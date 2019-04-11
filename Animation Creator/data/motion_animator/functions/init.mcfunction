# Necessary to calculate motion, since we can't take it directly from the Player
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard players reset * pos_x
scoreboard players reset * pos_y
scoreboard players reset * pos_z

# Used to store motion
scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard players reset * motion_x
scoreboard players reset * motion_y
scoreboard players reset * motion_z