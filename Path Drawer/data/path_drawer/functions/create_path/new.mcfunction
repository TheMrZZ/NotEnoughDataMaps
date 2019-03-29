## Called by a player wanting to create a new path. Set the animation initial state.
#
# @target A player wanting to create a path

tag @s add creating_new_path

scoreboard players set @s path_creator 0

# Summon the armor stand keeping the path data (inside a barrier block's data, in its head).
summon armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,CustomName:'"path_data"',Tags:["current"],ArmorItems:[{id:"minecraft:barrier",Count:1b,tag:{Path:[],Current:[]}},{},{},{}]}

# Give it the same ID so we can easily find it back
scoreboard players operation @e[name=path_data,tag=current,limit=1,sort=nearest] id = @s id

# Set current time to 0
scoreboard players set @s time 0

## Setup the initial state of the animation.

# First, create the initial state frame
data modify entity @e[name=path_data,tag=current,limit=1] ArmorItems[0].tag.First set value {}

# Then call the different animators
function #minecraft:animators/creation/first_tick

# Remove the tag from the current path data holder
tag @e[name=path_data,tag=current] remove current