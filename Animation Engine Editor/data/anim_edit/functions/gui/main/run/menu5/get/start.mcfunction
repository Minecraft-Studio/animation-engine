scoreboard players operation $_id_search _anim = @s _anim_page
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players add $_id_search _anim 1
scoreboard players set $_get_search _anim 1
data modify storage anim:editor tmp_anim_model_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get/loop
data remove storage anim:editor tmp_anim_model_data