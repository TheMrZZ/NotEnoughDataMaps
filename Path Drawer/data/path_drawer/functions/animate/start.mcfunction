## Start the animation of an entity. Gives it the tag animated. Initialize the tick of the first animation
#
# @target An entity with the start_animation tag

tag @s remove start_animation

tag @s add animated

scoreboard players set @s time 0

# In case of an Armor Stand, we need it to be able to move.
data merge entity @s {NoGravity:0b,Marker:0b}

# Initialize the current path
data modify entity @s ArmorItems[0].tag.Current set from entity @s ArmorItems[0].tag.Path

# Get the tick of first animation
execute store result score @s next_animation run data get entity @s ArmorItems[0].tag.Current[0].Tick