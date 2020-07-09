#start the load a specific keyframe, search loop
scoreboard players operation $_dkey_row _anim = @e[type=armor_stand,tag=anim_editor_sel] _anim_editor_row
scoreboard players operation $_dkey_col _anim = @e[type=armor_stand,tag=anim_editor_sel] _anim_editor_col
scoreboard players operation $_dkey_col _anim += $_page _anim
data modify storage anim:editor search set from storage anim:editor keyframes
execute store result score $_del_kmax _anim run data get storage anim:editor search
data remove storage anim:editor result
data remove storage anim:editor current_keyframe
scoreboard players reset $_sel_col _anim
scoreboard players reset $_sel_row _anim
bossbar add _anim_prgbar {"text":"Deleting...","color":"red"}
bossbar set _anim_prgbar color red
bossbar set _anim_prgbar players @p[tag=anim_user]
function anim_edit:gui/editor/run/search/delete_keyframe/loop