# Create the chest, with the same orientation as the seller
execute as @s[tag=facing_north] run setblock ~ ~ ~ minecraft:chest[facing=north]
execute as @s[tag=facing_south] run setblock ~ ~ ~ minecraft:chest[facing=south]
execute as @s[tag=facing_east] run setblock ~ ~ ~ minecraft:chest[facing=east]
execute as @s[tag=facing_west] run setblock ~ ~ ~ minecraft:chest[facing=west]

# Put the backup in it
data modify block ~ ~ ~ Items set from entity @e[name=shop_backup,limit=1,sort=nearest] ArmorItems[1].tag.Items

# Kill the shop
kill @e[name=shop_backup,limit=1,sort=nearest]
data merge entity @s {Health:0,DeathTime:19s}