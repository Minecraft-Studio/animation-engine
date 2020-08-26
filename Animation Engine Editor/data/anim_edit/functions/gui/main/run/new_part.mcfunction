#
#>Creates new Anim Part
# Runned from menu6/load
function anim_edit:search_model
summon armor_stand ~ ~ ~ {Tags:["anim_part","anim_part_new","anim_part_select"],Invisible:1,NoGravity:1b,Glowing:1,CustomName:'{"text":"Unnamed Anim Part"}',ArmorItems:[{},{},{id:"minecraft:stone",Count:1b},{}]}
scoreboard players operation @e[tag=anim_part_new] _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida
scoreboard players operation @e[tag=anim_part_new] _anim_idb = $_id_search _anim
scoreboard players operation @s _anim_idb_select = $_id_search _anim