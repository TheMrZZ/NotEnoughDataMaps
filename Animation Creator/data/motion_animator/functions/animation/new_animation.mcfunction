## Check if the animated entity changed its Motion, then change it if needed
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#         @e[tag=animated_entity] The real animated entity. This entity is the one that needs to be animated.
# Merge the Motion. If there is no Motion, nothing will happen since command will fail
data modify entity @s ArmorItems[0].tag.Motion set from entity @s ArmorItems[0].tag.Current[0].Motion