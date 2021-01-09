#
#>Creates new Anim Main
# Runned from menu4/load
summon armor_stand ~ ~ ~ {Tags:["anim_main","anim_main_new","anim_main_select"],Invisible:1,NoGravity:1b,Glowing:1,CustomName:'{"text":"Unnamed Anim Main"}',ArmorItems:[{},{},{id:"minecraft:stone",Count:1b,tag:{anim:[],animations:[]}},{}]}
scoreboard players operation @e[tag=anim_main_new] _anim_ida = $_id_search _anim
scoreboard players operation @s _anim_ida_select = $_id_search _anim