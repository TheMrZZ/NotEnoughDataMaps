## Stops a animation, and marks the entity has having its animation stopped.
## This is useful if the player wants to interact with entities at the end of their animation.
#
# @target an animated entity

tag @s remove animated

tag @s add animation_end

function #minecraft:animators/animation/end

# In case of an Armor Stand, freeze it back
data merge entity @s {NoGravity:1b,Marker:1b}