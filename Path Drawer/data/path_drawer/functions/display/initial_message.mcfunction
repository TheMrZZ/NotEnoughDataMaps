## Called when the datapack is loaded.

# Displays the basic message
tellraw @a [{"text":"[Animation Creator]", "color":"gold"}, {"text":" Successfully loaded with the following animators:", "color":"white"}]

## Display the loaded animators

# Summon an armor stand which will hold the names of the different animators
execute as @p at @s run summon armor_stand ~ ~ ~ {CustomName:'"animators_name_holder"',ArmorItems:[{id:barrier,Count:1b,tag:{Info:[]}}]}

# Get the names
execute as @e[name=animators_name_holder] at @s run function #minecraft:animators/get_information

# Display the names
execute as @e[name=animators_name_holder] at @s run function path_drawer:display/loaded_animators

# Kill him
kill @e[name=animators_name_holder]