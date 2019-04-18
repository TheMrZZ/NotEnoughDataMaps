## Called each time there is a new animation frame.
## This does NOT mean there is interesting data for this animator. 
## You need to take that into account.
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#
# @param @e[tag=can_be_animated,tag=current] The real animated entity. This entity is the one that needs to be animated.
# @param @s ArmorItems[0].tag.Current[0] The current animation frame

data modify entity @s ArmorItems[0].tag.Rotation set from entity @s ArmorItems[0].tag.Current[0].Rotation