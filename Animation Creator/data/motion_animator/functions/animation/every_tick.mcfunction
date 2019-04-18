## Apply current motion to the entity
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#
# @param @e[tag=can_be_animated,tag=current] The real animated entity. This entity is the one that needs to be animated.
# @param @s ArmorItems[0].tag.Current[0] The current animation frame
#
# Merge the Motion. If there is no Motion, nothing will happen since command will fail

data modify entity @e[tag=current,limit=1] Motion set from entity @s ArmorItems[0].tag.Motion