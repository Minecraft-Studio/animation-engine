#Saves the previous selected keyframe
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim:gui/editor/run/save_keyframe

#Selects the keyframe
# checks if the keyframe is already selected and if yes, sets $_sel_same _anim to 1
execute if score @s _anim_editor_col = $_sel_col _anim if score @s _anim_editor_row = $_sel_row _anim run scoreboard players set $_sel_same _anim 1
# resets the previous selection
scoreboard players reset $_sel_col _anim
scoreboard players reset $_sel_row _anim
# if the keyframe was not selected previously, select this one
execute unless score $_sel_same _anim matches 1 run function anim:gui/editor/run/select/sel2

#resets
scoreboard players reset $_sel_same _anim