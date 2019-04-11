## Called each tick for each player creating a animation. Create a new animation frame.
#
# @target A player with the creating_new_anim tag
# 
# @param @param @e[name=anim_data]: all animation data holders. They all have an ID, matching the ID of a player.
#
# @returns ArmorItems[0].tag.Anim[-1]: a new animation if needed.
# @returns Nothing if no animation is needed.

# Increment time
scoreboard players add @s time 1

# Create the animation, with the right tick set.
data modify entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim append value {Tick:0}
execute store result entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Tick int 1 run scoreboard players get @s time

# Call the animators
function #minecraft:animators/creation/every_tick

# If no animator acted on the current animation, remove it.
execute as @e[name=anim_data,tag=current,limit=1] if entity @s[tag=!modified] run data remove entity @s ArmorItems[0].tag.Anim[-1]
tag @e[name=anim_data,tag=current,limit=1] remove modified

title @s actionbar [{"text":"Right-click to stop the animation!","color":"light_purple"}]