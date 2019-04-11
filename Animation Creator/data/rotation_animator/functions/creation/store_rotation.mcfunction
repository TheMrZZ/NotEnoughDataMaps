## Store the entity's rotation inside the closest animation data holder
#
# @target Any entity
#
# @param @s rotation_h, rotation_v: three scores storing the current entity's rotation, with a 100 scale.
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[-1].Rotation: a NBT tag on the animation data holder, storing the current animation.

tag @s add rotation_changed

# Initialize a Rotation tag with null values
data modify entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Rotation set value [0.0f, 0.0f]

# Store the rotation in the new Rotation tag
execute store result entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Rotation[0] float 0.0001 run scoreboard players get @s rotation_h
execute store result entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Rotation[1] float 0.0001 run scoreboard players get @s rotation_v

tellraw @s[scores={debug_enabled=1}] [{"text":"["}, {"score":{"name":"@s","objective":"time"}}, {"text":"] Rotation: h="}, {"score":{"name":"@s","objective":"rotation_h"}}, {"text":", v="}, {"score":{"name":"@s","objective":"rotation_v"}}]