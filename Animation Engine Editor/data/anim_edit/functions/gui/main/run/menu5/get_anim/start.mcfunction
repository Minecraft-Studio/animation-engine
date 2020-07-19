#>Gets Animation data
# Input: anim:editor tmp_anim_model_data; $_id_search _anim
# Output: anim:editor anim_data
data modify storage anim:editor tmp_anim_data_search set from storage anim:editor tmp_anim_model_data
data remove storage anim:editor anim_data
function anim_edit:gui/main/run/menu5/get_anim/loop
execute if score $_del_api _anim matches 1.. run data modify entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations set from storage anim:editor tmp_anim_data_result
data remove storage anim:editor tmp_anim_data_result
scoreboard players reset $_del_api _anim