# Get the deals from the backup, and transform them into villager trades

# Due to a bug, we're forced to keep a "blank" deal to start with. We'll delete this deal at the end.
data modify entity @e[tag=shop_seller,tag=new,limit=1] Offers.Recipes set value [{}]

execute if data entity @s ArmorItems[1].tag.Items[{Slot:0b}] run function shop_creator:items_to_trade/column0
execute if data entity @s ArmorItems[1].tag.Items[{Slot:1b}] run function shop_creator:items_to_trade/column1
execute if data entity @s ArmorItems[1].tag.Items[{Slot:2b}] run function shop_creator:items_to_trade/column2
execute if data entity @s ArmorItems[1].tag.Items[{Slot:3b}] run function shop_creator:items_to_trade/column3
execute if data entity @s ArmorItems[1].tag.Items[{Slot:4b}] run function shop_creator:items_to_trade/column4
execute if data entity @s ArmorItems[1].tag.Items[{Slot:5b}] run function shop_creator:items_to_trade/column5
execute if data entity @s ArmorItems[1].tag.Items[{Slot:6b}] run function shop_creator:items_to_trade/column6
execute if data entity @s ArmorItems[1].tag.Items[{Slot:7b}] run function shop_creator:items_to_trade/column7
execute if data entity @s ArmorItems[1].tag.Items[{Slot:8b}] run function shop_creator:items_to_trade/column8

# Delete the "blank deal"
data remove entity @e[tag=shop_seller,tag=new,limit=1] Offers.Recipes[0]

# Delete the chest
setblock ~ ~ ~ air replace