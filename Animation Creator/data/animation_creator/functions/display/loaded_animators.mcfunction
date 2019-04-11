## Display the fact that an animator is loaded
## This function will call itself with the next animator
#
# @target an Armor Stand with every name of loaded animators

tellraw @a ["",{"text":"    →","color":"gold"},{"text":" "},{"nbt":"ArmorItems[0].tag.Info[0].Name","entity":"@s","color": "green"},{"text":" "},{"nbt":"ArmorItems[0].tag.Info[0].Help","entity":"@s","interpret":true},{"text":" ✓", "color": "green", "bold": true}]
data remove entity @s ArmorItems[0].tag.Info[0]

execute if data entity @s ArmorItems[0].tag.Info[0] run function animation_creator:display/loaded_animators