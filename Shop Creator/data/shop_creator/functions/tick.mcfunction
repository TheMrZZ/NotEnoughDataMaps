function shop_creator:handle_creators

# Test if someone raycasted
execute as @a[scores={rightclick_shop=1..}] at @s anchored eyes run function shop_creator:on_right_click
