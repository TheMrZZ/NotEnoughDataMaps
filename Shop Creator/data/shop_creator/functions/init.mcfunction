# Used for raycast
scoreboard objectives add rightclick_shop minecraft.used:minecraft.carrot_on_a_stick
scoreboard players reset * rightclick_shop
advancement revoke @a only shop_creator:hit_shop_seller

# Distance for raycast
scoreboard objectives add distance dummy
scoreboard players reset * distance


# Trigger to become a shop creator
scoreboard objectives add shop_creator trigger
scoreboard players reset * shop_creator