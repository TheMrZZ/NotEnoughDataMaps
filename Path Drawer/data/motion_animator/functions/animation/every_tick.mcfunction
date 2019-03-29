## Apply current motion to the entity
#
# @target an animated entity

# Merge the Motion. If there is no Motion, nothing will happen since command will fail
data modify entity @s Motion set from entity @s ArmorItems[0].tag.Motion