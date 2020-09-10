function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:get_clipboard
data modify storage anim:editor clipboards set from storage anim:editor output_clipboards
execute if data storage anim:editor current_keyframe run data remove storage anim:editor current_keyframe.tick
execute if data storage anim:editor current_keyframe run data modify storage anim:editor clipboard.data set from storage anim:editor current_keyframe
execute if data storage anim:editor current_keyframe store result storage anim:editor clipboard.id int 1 run scoreboard players get @s _anim_id_player
execute if data storage anim:editor current_keyframe run data modify storage anim:editor clipboards append from storage anim:editor clipboard

function anim_edit:gui/main/load