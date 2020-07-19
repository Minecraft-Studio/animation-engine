#>Creates new Anim Model
# Runned from menu4/load
summon armor_stand ~ ~ ~ {Tags:["anim_main","anim_main_select","anim_main_new"],Invisible:1,NoGravity:1b,Glowing:1,CustomName:'{"text":"Unnamed Anim Model"}'}
scoreboard players operation @e[tag=anim_main_select] _anim_ida = $_id_search _anim