## Takes care of the start of the animation, when a player chooses what Animators he needs.
#
# @target The player creating an animation

execute as @s[tag=!confirm_animators] run function animation_creator:display/menu

title @s[tag=confirm_animators,scores={time=0..}] times 0 15 5
title @s[tag=confirm_animators,scores={time=0..}] title ""

title @s[tag=confirm_animators,scores={time=0}] subtitle [{"text":"Animation recording will start in 3 seconds...","color":"gold"}]
playsound minecraft:block.note_block.pling master @s[tag=confirm_animators,scores={time=0}] ~ ~ ~ 1 1

title @s[tag=confirm_animators,scores={time=20}] subtitle [{"text":"Animation recording will start in 2 seconds...","color":"gold"}]
playsound minecraft:block.note_block.pling master @s[tag=confirm_animators,scores={time=20}] ~ ~ ~ 1 1

title @s[tag=confirm_animators,scores={time=40}] subtitle [{"text":"Animation recording will start in 1 seconds...","color":"gold"}]
playsound minecraft:block.note_block.pling master @s[tag=confirm_animators,scores={time=40}] ~ ~ ~ 1 1

tellraw @s[tag=confirm_animators,scores={time=60}] [{"text":"Recording starts!","color":"light_purple"}]
playsound minecraft:block.note_block.pling master @s[tag=confirm_animators,scores={time=60}] ~ ~ ~ 1 2

scoreboard players set @s[tag=confirm_animators,scores={time=60}] create_animation 2
tag @s[tag=confirm_animators,scores={time=60}] remove confirm_animators

scoreboard players add @s[tag=confirm_animators] time 1