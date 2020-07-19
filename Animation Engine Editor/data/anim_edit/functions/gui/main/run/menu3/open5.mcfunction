scoreboard players operation $_id_search _anim = $main_page _anim
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players add $_id_search _anim 5
execute as @e[tag=anim_main] if score @s _anim_ida = $_id_search _anim run tag @s add anim_main_select
scoreboard players reset $main_page _anim
execute if entity @e[tag=anim_main_select] run function anim_edit:gui/main/run/menu5/load
execute unless entity @e[tag=anim_main_select] run function anim_edit:gui/main/run/menu4/load