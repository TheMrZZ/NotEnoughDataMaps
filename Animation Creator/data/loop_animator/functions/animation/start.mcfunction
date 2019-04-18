## Called at the start of an animation
#
# @target @s An armor_stand holding information. This entity is used to retrieve informations about the current animation frame.
#         @e[tag=can_be_animated,tag=current] The real animated entity. This entity is the one that needs to be animated.

execute if entity @s[tag=loop_animator] run data modify entity @s ArmorItems[0].tag.InitialPos set from entity @e[tag=can_be_animated,tag=current,limit=1] Pos