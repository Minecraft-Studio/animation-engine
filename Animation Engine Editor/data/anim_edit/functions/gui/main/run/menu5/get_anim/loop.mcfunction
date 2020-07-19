scoreboard players reset $_tmp_anim_id _anim
execute store result score $_tmp_anim_id _anim run data get storage anim:editor tmp_anim_data_search[0].id
execute if score $_tmp_anim_id _anim = $_id_search _anim run data modify storage anim:editor anim_data set from storage anim:editor tmp_anim_data_search[0]
data remove storage anim:editor tmp_anim_data_search[0]
execute unless data storage anim:editor anim_data if data storage anim:editor tmp_anim_data_search[0] run function anim_edit:gui/main/run/menu5/get_anim/loop
