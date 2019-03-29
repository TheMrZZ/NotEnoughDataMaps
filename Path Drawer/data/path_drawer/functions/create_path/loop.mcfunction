## Execute the right set of functions, each tick, on players creating paths.
## Take care people asking for debug & for path creation


scoreboard players enable @a debug_enabled
scoreboard players set @a[scores={debug_enabled=2..}] debug_enabled 0

scoreboard players enable @a path_creator

# A player asking to create a path
execute as @e[scores={path_creator=1},tag=!creating_new_path] at @s run function path_drawer:create_path/new

# A player currently creating a path
execute as @e[scores={path_creator=0},tag=creating_new_path] at @s run function path_drawer:create_path/main

# A player asking to stop his path
execute as @e[scores={path_creator=1},tag=creating_new_path] at @s run function path_drawer:create_path/stop