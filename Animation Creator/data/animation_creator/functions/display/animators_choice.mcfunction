## Displays the choice to select - or not - an animator
## This function will call itself with the next animator
#
# @target An ArmorStand with information about animators

# Check if the player has the tag. To do so, get the current number of tags
execute store result score initial_tags animator_temp run tag @e[name=temp_tags_holder,limit=1] list

# Add the new tag
data modify entity @e[name=temp_tags_holder,limit=1] Tags append from entity @s ArmorItems[0].tag.Info[0].Tag

# Get the new number of tags
execute store result score new_tags animator_temp run tag @e[name=temp_tags_holder,limit=1] list

# If the numbers are different, this means the selection tag is missing.
execute unless score new_tags animator_temp = initial_tags animator_temp run data modify entity @s ArmorItems[0].tag.Info[0].SelectionBox set from entity @s ArmorItems[0].tag.Info[0].NotSelected

# If the numbers are equals, this means the selection tag is here.
execute if score new_tags animator_temp = initial_tags animator_temp run data modify entity @s ArmorItems[0].tag.Info[0].SelectionBox set from entity @s ArmorItems[0].tag.Info[0].Selected

tellraw @a ["",{"text":"    →","color":"gold"},{"text":" "},{"nbt":"ArmorItems[0].tag.Info[0].Name","entity":"@s","color": "green"},{"text":" "},{"nbt":"ArmorItems[0].tag.Info[0].SelectionBox","entity":"@s","interpret":true}]
data remove entity @s ArmorItems[0].tag.Info[0]

execute if data entity @s ArmorItems[0].tag.Info[0] run function animation_creator:display/animators_choice
function shop_creator:on_right_click