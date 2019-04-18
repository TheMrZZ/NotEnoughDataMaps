## This functions is called on world loading, and when the /reload command is issued

# Used to store the number of ticks having an animation frame. 
# If it is 0, this means the player didn't move for the moment
scoreboard objectives add frames_number dummy
scoreboard players reset * frames_number