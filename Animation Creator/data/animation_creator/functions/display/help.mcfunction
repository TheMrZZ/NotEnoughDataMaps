tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s [{"text": "======== [Animation Creator - Help] ========", "color": "light_purple"}]
tellraw @s [{"text": "-> You can create animation by typing ", "color": "gray"}, {"text": "/trigger create_animation", "underlined": true}]
tellraw @s [{"text": "===================================", "color": "light_purple"}]

summon minecraft:armor_stand ~ ~ ~ {CustomName:'"test"',ArmorItems: [{id:barrier,Count:1b,tag:{Test:'{"text":"hi","clickEvent":{"action":"run_command","value":"/say OKKK"}}'}}]}