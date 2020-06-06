#Save
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim:gui/editor/run/save_keyframe

#Select
execute if score @s _anim_editor_col = $_sel_col _anim if score @s _anim_editor_row = $_sel_row _anim run scoreboard players set $_sel_same _anim 1
scoreboard players reset $_sel_col _anim
scoreboard players reset $_sel_row _anim
execute unless score $_sel_same _anim matches 1 run function anim:gui/editor/run/select/sel2

scoreboard players reset $_sel_same _anim