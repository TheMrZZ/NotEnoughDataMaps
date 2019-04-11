## Store the entity's motion inside the closest animation data holder
#
# @target Any entity
#
# @param @s motion_x, motion_y, motion_z: three scores storing the current entity's motion, with a 100 scale.
# @param @e[name=anim_data,tag=current]: the animation data holder
#
# @returns ArmorItems[0].tag.Anim[-1].Motion: a NBT tag on the animation data holder, storing the current animation.

# Initialize a Motion tag with null values
data modify entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Motion set value [0.0d, 0.0d, 0.0d]

# Store the motion in the new Motion tag
execute store result entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Motion[0] double 0.0001 run scoreboard players get @s motion_x
execute store result entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Motion[1] double 0.0001 run scoreboard players get @s motion_y
execute store result entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Motion[2] double 0.0001 run scoreboard players get @s motion_z

tag @s add motion_changed

tellraw @s[scores={debug_enabled=1}] [{"text":"["}, {"score":{"name":"@s","objective":"time"}}, {"text":"] Motion: x="}, {"score":{"name":"@s","objective":"motion_x"}}, {"text":", y="}, {"score":{"name":"@s","objective":"motion_y"}}, {"text":", z="}, {"score":{"name":"@s","objective":"motion_z"}}]