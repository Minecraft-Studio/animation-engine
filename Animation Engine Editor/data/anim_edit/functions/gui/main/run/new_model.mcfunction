#>Creates new Anim Model
# Runned from menu4/load
summon armor_stand ~ ~ ~ {Tags:["anim_model","anim_model_select","anim_model_new"],Invisible:1,NoGravity:1b,Glowing:1,CustomName:'{"text":"Unnamed Anim Model"}',ArmorItems:[{},{},{id:"minecraft:stone",Count:1b,tag:{anim:[],animations:[]}},{}]}
scoreboard players operation @e[tag=anim_model_select] _anim_ida = $_id_search _anim