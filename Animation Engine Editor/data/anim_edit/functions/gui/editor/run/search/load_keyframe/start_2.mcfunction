#start the load a specific keyframe, search loop
scoreboard players reset $_api_endcomp _anim
scoreboard players operation $_key_row _anim = @e[type=armor_stand,tag=anim_editor_sel] _anim_editor_row
scoreboard players operation $_key_col _anim = @e[type=armor_stand,tag=anim_editor_sel] _anim_editor_col
scoreboard players operation $_key_col _anim += $_page _anim
data modify storage anim:editor search set from storage anim:editor keyframes
data remove storage anim:editor current_keyframe
function anim_edit:gui/editor/run/search/load_keyframe/loop
execute as @e[tag=anim_editor_sel] run function anim_edit:gui/editor/select