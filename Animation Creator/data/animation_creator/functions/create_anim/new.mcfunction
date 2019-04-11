## Called by a player wanting to create a new animation. Set the animation initial state.
#
# @target A player wanting to create a animation

# Tag the player as creating a animation
tag @s add creating_new_anim

# Summon the armor stand keeping the animation data (inside a barrier block's data, in its head).
summon armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,CustomName:'"anim_data"',Tags:["current"],ArmorItems:[{id:"minecraft:barrier",Count:1b,tag:{Anim:[],Current:[]}},{},{},{}]}

# Give it the same ID so we can easily find it back
scoreboard players operation @e[name=anim_data,tag=current,limit=1,sort=nearest] id = @s id

# Give it the player's tags, so we can find which animator was selected and which were not
data modify entity @e[name=anim_data,tag=current,limit=1] Tags set from entity @s Tags

# Set current time to 0
scoreboard players set @s time 0

## Setup the initial state of the animation.

# First, create the initial state frame
data modify entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.First set value {}

# Then call the different animators
function #minecraft:animators/creation/first_tick

# Give the player a carrot on a stick. By right-clicking it, he will stop the animation.
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Right-click to stop the animation!","italic":"false","color":"light_purple"}]'},AnimatorCarrot:1b} 1