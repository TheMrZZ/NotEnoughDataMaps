## Called just after the animation recording ends.
#
# Used to make external changes. This changes can be related to the Animation, but should not modify it.
#
## /!\ This must NOT change the Anim tag. This is strictly forbidden. Animation MUST NOT be changed by any "after" function.
## If you really want to change the Animation, use the function smart_trim_animator:creation/last_tick.
## Therefore, you are assured that other animators (and yours) will work correctly.
#
# @target The player creating the animation
#
# @param @e[name=anim_data,tag=current]: the animation data holder
# @param (READ ONLY) ArmorItems[0].tag.Anim: the recorded animation, in the animation data holder

# Set the current time as the last tick of the last animation
execute store result score @s time run data get entity @e[name=anim_data,tag=current,limit=1] ArmorItems[0].tag.Anim[-1].Tick