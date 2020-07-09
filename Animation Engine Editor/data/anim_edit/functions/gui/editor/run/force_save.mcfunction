tag @e[tag=anim_editor_sel] add anim_editor_sel_had
scoreboard players set $_no_deselect _anim 1
function anim_edit:gui/editor/run/save_keyframe
tag @e[tag=anim_editor_sel_had] add anim_editor_sel
tag @e[tag=anim_editor_sel_had] remove anim_editor_sel_had

execute as @e[type=armor_stand,tag=anim_editor] if score @s _anim_editor_col = $_sel_col _anim if score @s _anim_editor_row = $_sel_row _anim run function anim_edit:gui/editor/run/search/load_keyframe/start

#Disable Gamerule
function anim_edit:gamerule