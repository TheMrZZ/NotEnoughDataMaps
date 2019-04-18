## Called each time there is a new animation frame.
## This does NOT mean there is interesting data for this animator. 
## You need to take that into account.
#
## Check if the animated entity changed its Motion, then change it if needed
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#
# @param @e[tag=can_be_animated,tag=current] The real animated entity. This entity is the one that needs to be animated.
# @param @s ArmorItems[0].tag.Current[0] The current animation frame
#
# Merge the Motion. If there is no Motion, nothing will happen since command will fail

data modify entity @s ArmorItems[0].tag.Motion set from entity @s ArmorItems[0].tag.Current[0].Motion