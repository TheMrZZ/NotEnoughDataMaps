## Start the animation of an entity. Gives it the tag animated. Initialize the tick of the first animation
#
# @target An entity with the start_animation tag

tag @s remove start

tag @s add animated

scoreboard players set @s time 0

# Initialize the current animation
data modify entity @s ArmorItems[0].tag.Current set from entity @s ArmorItems[0].tag.Anim

# Get the tick of first animation
execute store result score @s next_animation run data get entity @s ArmorItems[0].tag.Current[0].Tick