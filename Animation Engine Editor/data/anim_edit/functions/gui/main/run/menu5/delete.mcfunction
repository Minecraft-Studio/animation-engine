#>Deletes selected Animation
scoreboard players set $_del_api _anim 1
scoreboard players operation $_id_search _anim = $selected_animation _anim
data modify storage anim:editor tmp_anim_model_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get_anim/start
scoreboard players reset $selected_animation _anim
function anim_edit:gui/main/load