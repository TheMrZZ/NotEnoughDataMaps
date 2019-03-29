# Summon the raycast armorstand & position it
summon armor_stand ~ ~ ~ {Marker:1b,CustomName:'"shop_raycast"',Invisible:1b,NoGravity:1b}
tp @e[name=shop_raycast,limit=1] ^ ^ ^ ~ ~

scoreboard players set @e[name=shop_raycast,limit=1] distance 0

execute as @e[name=shop_raycast,limit=1] at @s rotated as @s run function shop_creator:raycast/loop

# If the raycast found a chest
execute as @e[name=shop_raycast,limit=1] at @s if block ~ ~ ~ chest run tag @s add found_chest