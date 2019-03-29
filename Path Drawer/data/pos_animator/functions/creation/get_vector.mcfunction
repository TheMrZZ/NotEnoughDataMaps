# Backup old position
scoreboard players operation old pos_x = @s pos_x
scoreboard players operation old pos_y = @s pos_y
scoreboard players operation old pos_z = @s pos_z

# Get new position
function path_drawer:create_path/spatial/get_pos

# Calculate vector
scoreboard players operation @s vect_x = @s pos_x
scoreboard players operation @s vect_x -= old pos_x

scoreboard players operation @s vect_y = @s pos_y
scoreboard players operation @s vect_y -= old pos_y

scoreboard players operation @s vect_z = @s pos_z
scoreboard players operation @s vect_z -= old pos_z