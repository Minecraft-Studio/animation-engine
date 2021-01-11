scoreboard players operation $_id_search _anim = @s _anim_page
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players operation $_id_search _anim += $_id_selected _anim
scoreboard players reset $_id_selected _anim
function anim_edit:search_model
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_id_search _anim run tag @s add anim_part_select
execute if entity @e[tag=anim_part_select] run scoreboard players operation @s _anim_idb_select = $_id_search _anim
scoreboard players reset @s _anim_page
function anim_edit:gui/main/load