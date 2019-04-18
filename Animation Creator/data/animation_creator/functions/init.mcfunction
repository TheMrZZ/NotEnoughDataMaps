## Reset current animation creations
# When reloading, all current animation creators have to stop to avoid bugs.

# Kill all animation data armorstand
kill @e[name=anim_data]
# Remove all related tags
tag @a remove confirm_animators
tag @a remove creating_new_anim

## Create objectives
# Used to keep track of who's creating a animation
scoreboard objectives add create_animation trigger
scoreboard players reset * create_animation

# Used to time the animations
scoreboard objectives add time dummy
scoreboard players reset * time

# Used to know how many ticks an animation lasts
scoreboard objectives add animation_time dummy

# Used to know when the next animation will happen
scoreboard objectives add next_animation dummy

# Used to match a player (creating a animation) with an armorstand (holding the animation informations)
scoreboard objectives add id dummy
scoreboard players reset * id
scoreboard players set new id 0

# Used to match an armorstand (holding information about an animation) with an entity (needing to be animated)
scoreboard objectives add entity_id dummy

# Used to avoid hitboxes of entities
team add no_collision
team modify no_collision collisionRule never

# Debug enabled
scoreboard objectives add debug_enabled trigger

# Hold temporary informations
scoreboard objectives add animator_temp dummy

# Gets right clicks
scoreboard objectives add rightclick_anim minecraft.used:minecraft.carrot_on_a_stick

# Calls the initial message
function animation_creator:display/initial_message

function #minecraft:animators/init