## Called every tick during an animation
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#         @e[tag=animated_entity] The real animated entity. This entity is the one that needs to be animated.

data modify entity @e[tag=current,limit=1] Rotation set from entity @s ArmorItems[0].tag.Rotation