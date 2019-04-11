## Display a menu for the user to choose which Animator to use.
## This menu will be displayed until the user choose to start the animation.
#
# @target The player starting an animation

# To check if the player has the selected tags, we need a temporary entity which will hold those tags.
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'"temp_tags_holder"',Radius:0f}
data modify entity @e[name=temp_tags_holder,limit=1] Tags set from entity @s Tags

# Get the animator's information
execute as @p at @s run summon armor_stand ~ ~ ~ {CustomName:'"animators_info_holder"',Invisible:1b,Marker:1b,ArmorItems:[{id:barrier,Count:1b,tag:{Info:[]}}]}
execute as @e[name=animators_info_holder] at @s run function #minecraft:animators/get_information

## Start to display

# Display a bunch of blank lines & the menu
tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n========= [Choose your animators] =========", "color": "green"}]

# Display the choices
execute as @e[name=animators_info_holder] run function animation_creator:display/animators_choice

# Display the end of the menu
tellraw @s [{"text":"\n> Click ", "color": "gray"}, {"text": "here to confirm", "color": "gold","clickEvent":{"action":"run_command","value":"/tag @s add confirm_animators"}}, {"text":"."}]
tellraw @s [{"text": "=========================================", "color": "green"}]

# Kill the tags holder, and the information holder
kill @e[name=temp_tags_holder]
kill @e[name=animators_info_holder]

scoreboard players set @s time 0