execute if entity @e[type=armor_stand,tag=anim_editor_sel] run tag @e[tag=anim_editor_sel] add anim_editor_sel_had
execute if entity @e[type=armor_stand,tag=anim_editor_sel] run scoreboard players set $_no_deselect _anim 1
execute if entity @e[type=armor_stand,tag=anim_editor_sel] run function anim_edit:gui/editor/run/save_keyframe
execute if entity @e[type=armor_stand,tag=anim_editor_sel] run tag @e[tag=anim_editor_sel_had] add anim_editor_sel
execute if entity @e[type=armor_stand,tag=anim_editor_sel] run tag @e[tag=anim_editor_sel_had] remove anim_editor_sel_had

execute as @e[type=armor_stand,tag=anim_editor] if score @s _anim_editor_col = $_sel_col _anim if score @s _anim_editor_row = $_sel_row _anim run function anim_edit:gui/editor/run/search/load_keyframe/start

#Disable gamerule sendCommandFeedback if setting enabled
function anim_edit:gamerule