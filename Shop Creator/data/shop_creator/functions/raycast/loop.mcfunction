tp @s ^ ^ ^0.1
execute as @s[scores={distance=2..}] run particle minecraft:flame
scoreboard players add @s distance 1

execute as @s[scores={distance=..100}] at @s rotated as @s unless block ~ ~ ~ chest run function shop_creator:raycast/loop