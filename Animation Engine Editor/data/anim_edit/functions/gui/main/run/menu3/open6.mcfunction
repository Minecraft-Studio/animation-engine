scoreboard players operation $_id_search _anim = @s _anim_page
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players add $_id_search _anim 6
execute as @e[tag=anim_model] if score @s _anim_ida = $_id_search _anim run tag @s add anim_model_select
scoreboard players reset @s _anim_page
execute if entity @e[tag=anim_model_select] run scoreboard players operation @s _anim_ida_select = $_id_search _anim
execute if entity @e[tag=anim_model_select] run function anim_edit:gui/main/run/menu5/load
execute unless entity @e[tag=anim_model_select] run function anim_edit:gui/main/run/menu4/load
function anim_edit:deselect_anim