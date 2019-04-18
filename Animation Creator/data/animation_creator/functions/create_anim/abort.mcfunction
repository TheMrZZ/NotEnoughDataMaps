## Cancel the creation of an animation.
#
# @target A player

# Tag the current armorstand used for animation
function animation_creator:create_anim/tag_data_holder
# kill it
kill @e[name=anim_data,tag=current]

# Reset everything else
scoreboard players set @s create_animation 0

tag @s remove confirm_animators
tag @s remove modified
tag @s remove creating_new_anim

tellraw @s [{"text":"Successfully cancelled animation.", "color": "gold"}]