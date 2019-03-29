## Display the fact that an animator is loaded
#
# @target an Armor Stand with every name of loaded animators

tellraw @a ["",{"text":"✓","bold":true,"color":"green"},{"text":" "},{"nbt":"ArmorItems[0].tag.Info[0].Name","entity":"@s"},{"text":" "},{"nbt":"ArmorItems[0].tag.Info[0].Help","entity":"@s","interpret":true}]