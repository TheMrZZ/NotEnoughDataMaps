# This function is called when a shop seller is hit by a player. It is called on the player.

# Revoke the advancement
advancement revoke @s only shop_creator:hit_shop_seller

# First, check if the player is a shop creator. Then, launch the shop to chest transformation on the seller
execute as @s[tag=shop_creator] as @e[tag=shop_seller,nbt=!{HurtTime:0s}] at @s run function shop_creator:shop_to_chest/start

# Finally, heal all shop sellers (in case a random creative player - not shop creator - hit a villager)
effect give @e[tag=shop_seller] minecraft:instant_health 1 100 true