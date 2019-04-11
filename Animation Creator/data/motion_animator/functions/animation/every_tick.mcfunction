## Apply current motion to the entity
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#         @e[tag=animated_entity] The real animated entity. This entity is the one that needs to be animated.
# Merge the Motion. If there is no Motion, nothing will happen since command will fail
data modify entity @e[tag=current,limit=1] Motion set from entity @s ArmorItems[0].tag.Motion