## Check if the animated entity changed its Motion, then change it if needed
#
# @target an animated entity

# Merge the Motion. If there is no Motion, nothing will happen since command will fail
data modify entity @s ArmorItems[0].tag.Motion set from entity @s ArmorItems[0].tag.Current[0].Motion