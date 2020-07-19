scoreboard players operation $_id_search _anim = $main_page _anim
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players add $_id_search _anim 6
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_id_search _anim run tag @s add anim_part_select
scoreboard players reset $main_page _anim
function anim_edit:gui/main/run/menu6/load