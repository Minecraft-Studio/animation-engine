scoreboard players operation $_id_search _anim = @s _anim_page
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players add $_id_search _anim 1
scoreboard players set $_get_search _anim 1
tag @e[tag=anim_model] remove anim_model_menu
function anim_edit:gui/main/run/menu3/get/loop