# Transforms column 0 into a trade. Top item is the price, middle & bottom are the items to buy.

data modify entity @e[tag=shop_seller,tag=new,limit=1] Offers.Recipes append value {sell:{},buy:{},buyB:{}}
data modify entity @e[tag=shop_seller,tag=new,limit=1] Offers.Recipes[-1].sell set from entity @s ArmorItems[1].tag.Items[{Slot:0b}]
data modify entity @e[tag=shop_seller,tag=new,limit=1] Offers.Recipes[-1].buy set from entity @s ArmorItems[1].tag.Items[{Slot:9b}]
data modify entity @e[tag=shop_seller,tag=new,limit=1] Offers.Recipes[-1].buyB set from entity @s ArmorItems[1].tag.Items[{Slot:18b}]
