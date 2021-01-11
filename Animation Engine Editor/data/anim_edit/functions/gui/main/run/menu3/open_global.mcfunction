scoreboard players operation $_id_search _anim = @s _anim_page
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players operation $_id_search _anim += $_id_selected _anim
scoreboard players reset $_id_selected _anim
execute as @e[tag=anim_main] if score @s _anim_ida = $_id_search _anim run tag @s add anim_main_select
scoreboard players reset @s _anim_page
function anim_edit:search_model
execute if entity @e[tag=anim_main_select] run scoreboard players operation @s _anim_ida_select = $_id_search _anim
execute if entity @e[tag=anim_main_select] run scoreboard players set @s _anim_menu 5
execute unless entity @e[tag=anim_main_select] run scoreboard players set @s _anim_menu 4
function anim_edit:deselect_anim
function anim_edit:gui/main/load