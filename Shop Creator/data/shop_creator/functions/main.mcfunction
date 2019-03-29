function shop_creator:raycast/start

execute as @e[name=shop_raycast,tag=found_chest] at @s align xyz positioned ~0.5 ~ ~0.5 run function shop_creator:chest_to_shop/start

execute as @e[name=shop_raycast,tag=found_seller] at @e[tag=shop_seller,limit=1] run function shop_creator:shop_to_chest/start

kill @e[name=shop_raycast]