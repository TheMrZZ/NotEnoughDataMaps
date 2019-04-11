## Tags as "current" the animation data holder.
#
# @target A player creating an animation

# Tag the armor_stand having the same ID than the player
scoreboard players operation current_player id = @s id
execute as @e[name=anim_data] if score @s id = current_player id run tag @s add current
