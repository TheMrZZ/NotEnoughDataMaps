# We're hiding the chest backup on the armorstand's chest so it's not visible.
# We need to summon the armorstand with its initial rotation set. Doing a teleportation / a Rotation set will trigger a bug.
# We give the villager a different tag for each orientation.

# North
execute if block ~ ~ ~ minecraft:chest[facing=north] run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],CustomName:'"shop_backup"',Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["new"],ArmorItems:[{},{id:"minecraft:chest",Count:1b,tag:{Items:[]}}],Passengers:[{id:"minecraft:villager",Tags:["new","shop_seller","facing_north"],Invulnerable:1b}]}

# South
execute if block ~ ~ ~ minecraft:chest[facing=south] run summon armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],CustomName:'"shop_backup"',Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["new"],ArmorItems:[{},{id:"minecraft:chest",Count:1b,tag:{Items:[]}}],Passengers:[{id:"minecraft:villager",Tags:["new","shop_seller","facing_south"],Invulnerable:1b}]}

# East
execute if block ~ ~ ~ minecraft:chest[facing=east] run summon armor_stand ~ ~ ~ {Rotation:[270.0f,0.0f],CustomName:'"shop_backup"',Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["new"],ArmorItems:[{},{id:"minecraft:chest",Count:1b,tag:{Items:[]}}],Passengers:[{id:"minecraft:villager",Tags:["new","shop_seller","facing_east"],Invulnerable:1b}]}

# West
execute if block ~ ~ ~ minecraft:chest[facing=west] run summon armor_stand ~ ~ ~ {Rotation:[90.0f,0.0f],CustomName:'"shop_backup"',Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["new"],ArmorItems:[{},{id:"minecraft:chest",Count:1b,tag:{Items:[]}}],Passengers:[{id:"minecraft:villager",Tags:["new","shop_seller","facing_west"],Invulnerable:1b}]}

data modify entity @e[name="shop_backup",tag=new,limit=1] ArmorItems[1].tag.Items set from block ~ ~ ~ Items
