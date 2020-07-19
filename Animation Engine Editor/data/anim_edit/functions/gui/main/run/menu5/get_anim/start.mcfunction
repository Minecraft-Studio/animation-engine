#>Gets Animation data
# Input: anim:editor tmp_anim_model_data; $_id_search _anim
# Output: anim:editor anim_data
data modify storage anim:editor tmp_anim_data_search set from storage anim:editor tmp_anim_model_data
data remove storage anim:editor anim_data
function anim_edit:gui/main/run/menu5/get_anim/loop