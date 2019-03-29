# Kill all path data armorstand : when reloading, all current path creators have to stop to avoid bugs
# kill @e[name=path_data]

# Used to keep track of who's creating a path
scoreboard objectives add path_creator trigger
scoreboard players reset * path_creator

# Necessary to calculate motion, since we can't take it directly from the Player
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy
scoreboard players reset * pos_x
scoreboard players reset * pos_y
scoreboard players reset * pos_z

# Used by the motion animator
scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard players reset * motion_x
scoreboard players reset * motion_y
scoreboard players reset * motion_z

# Used to time the animations
scoreboard objectives add time dummy
scoreboard players reset * time

# Used to know how many ticks an animation lasts
scoreboard objectives add animation_time dummy

# Used to know when the next animation will happen
scoreboard objectives add next_animation dummy

# Used to match a player (creating a path) with an armorstand (holding the path informations)
scoreboard objectives add id dummy
scoreboard players reset * id
scoreboard players set new id 0

# Constants
scoreboard objectives add const dummy
scoreboard players set -1 const -1

# Debug enabled
scoreboard objectives add debug_enabled trigger

# Calls the initial message
function path_drawer:display/initial_message