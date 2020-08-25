#>Creates new Anim Part
# Runned from menu6/load
summon armor_stand ~ ~ ~ {Tags:["anim_part","anim_part_select","anim_part_new"],Invisible:1,NoGravity:1b,Glowing:1,CustomName:'{"text":"Unnamed Anim Part"}',ArmorItems:[{},{},{id:"minecraft:stone",Count:1b},{}]}
scoreboard players operation @e[tag=anim_part_select] _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida
scoreboard players operation @e[tag=anim_part_select] _anim_idb = $_id_search _anim