# Handle shops creators

# Test if someone asked to create shops 
# First allow them
scoreboard players enable @a shop_creator

# Give them the carrot on a stick if they want to create shops
replaceitem entity @a[scores={shop_creator=1..}] weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Shop Editor","italic":"false","color":"light_purple"}]'},ShopCarrot:1b} 1

# Reset the fact that they asked a carrot on a stick
scoreboard players set * shop_creator 0

# Give a tag to shop creators
tag @a remove shop_creator
tag @a[nbt={SelectedItem:{tag:{ShopCarrot:1b}}}] add shop_creator

# For people holding a carrot on a stick, display them informations
execute as @a[tag=shop_creator] run title @s times 0 1 0
execute as @a[tag=shop_creator] run title @s actionbar [{"text":"Shift + Right Click to transform a chest into a shop", "color":"light_purple"},{"text":" | ", "color": "white"}, {"text":"Hit a seller to transform him back into a chest!", "color":"gold"}]