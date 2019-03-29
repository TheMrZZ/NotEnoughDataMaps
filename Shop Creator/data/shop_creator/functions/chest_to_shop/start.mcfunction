# Get the backup of the offers.
function shop_creator:chest_to_shop/create_shop_backup

# Then, get the seller
execute as @e[name=shop_backup,tag=new,limit=1] run function shop_creator:chest_to_shop/create_shop_seller

# Remove the "new" tag from the shop backup & seller
tag @e[name=shop_backup,tag=new,limit=1] remove new
tag @e[tag=shop_seller,tag=new,limit=1] remove new