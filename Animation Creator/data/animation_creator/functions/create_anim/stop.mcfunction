## Called by a player wanting to stop his animation creation. Make sure it happens.
#
# @target A player creating a animation

# Stop animation creation
tag @s remove creating_new_anim

scoreboard players set @s create_animation 0

# Call the different animators end function
function #minecraft:animators/creation/last_tick

## Create the new entities & give them the same id 
execute as @e[name=anim_data,tag=current,limit=1] at @s run summon minecraft:villager ~ ~ ~ {Invulnerable:1b,Tags:["new", "can_be_animated"],Attributes:[{Base:0.0d,Name:"generic.movementSpeed"}],Team:"no_collision",Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,CustomName:'"animated"',Tags:["new"]}]}
scoreboard players operation @e[tag=new,limit=2,sort=nearest] entity_id = new entity_id
scoreboard players add new entity_id 1

# Clone data fromt he old data holder
data modify entity @e[name=animated,tag=new,limit=1] ArmorItems set from entity @e[name=anim_data,limit=1] ArmorItems

# Store the animation duration
scoreboard players operation @e[name=animated,tag=new,limit=1] animation_time = @s time

# Last thing to do since it will remove the "new" tag
data modify entity @e[name=animated,tag=new,limit=1] Tags set from entity @e[name=anim_data,limit=1] Tags

# We can now kill the old anim_data
kill @e[name=anim_data]

# Remove the "new" tag remaining in the villager
tag @e[tag=new,limit=1,sort=nearest] remove new

## Last display
# Play a final sound
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0

# Play a "Animation recorded" title
title @s times 0 20 5
title @s subtitle [{"text":"Animation recorded!","color":"light_purple"}]
title @s title ""

# Tell the user the instructions to play the animation
tellraw @s [{"text":"============= Animation Recorded! =============","color":"gold"}]
tellraw @s [{"text":"To play the animation, add the 'start' tag to the new entity named 'animated'."}]
tellraw @s [{"text":"Example:\n","color":"gray"},{"text":"/tag @e[name=animated] add start","color":"gray","italic": true, "hoverEvent":{"action": "show_text", "value":"Click to copy the command in your chat"}, "clickEvent": {"action": "suggest_command", "value": "/tag @e[name=animated] add start"}}]
tellraw @s [{"text":"============================================","color":"gold"}]

# Remove the carrot on a stick
clear @s minecraft:carrot_on_a_stick{AnimatorCarrot:1b}