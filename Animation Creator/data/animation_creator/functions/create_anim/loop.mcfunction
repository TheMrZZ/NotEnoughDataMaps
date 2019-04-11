## Execute the right set of functions, each tick, on players creating animations.
## Take care people asking for debug & for animation creation
#
# @target Any player

scoreboard players enable @a debug_enabled
scoreboard players set @a[scores={debug_enabled=2..}] debug_enabled 0

scoreboard players enable @a create_animation

# A player asking to create a animation : show him the menu
execute as @s[scores={create_animation=1}] run function animation_creator:display/start_main

execute as @s[scores={create_animation=2..}] run function animation_creator:create_anim/tag_data_holder

execute as @s[scores={create_animation=2},tag=!creating_new_anim] run function animation_creator:create_anim/new

# A player currently creating a animation
execute as @s[scores={create_animation=2},tag=creating_new_anim] run function animation_creator:create_anim/main

# A player asking to stop his animation.
execute as @s[scores={create_animation=2,rightclick_anim=1..},nbt={Inventory:[{Slot:-106b,tag:{AnimatorCarrot:1b}}]}] at @s run function animation_creator:create_anim/stop
execute as @s[scores={create_animation=2,rightclick_anim=1..},nbt={SelectedItem:{tag:{AnimatorCarrot:1b}}}] at @s run function animation_creator:create_anim/stop

scoreboard players set @s[scores={rightclick_anim=1..}] rightclick_anim 0

# Remove the tag from the current animation data holder
tag @e[name=anim_data,tag=current] remove current
tag @e[name=animated,tag=current] remove current