#Save
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim:gui/editor/run/save_keyframe

#Select
scoreboard players set $_sel_row _anim 1
execute if entity @s[tag=anim_editor_c0] run scoreboard players set $_sel_col _anim 0
execute if entity @s[tag=anim_editor_c1] run scoreboard players set $_sel_col _anim 1
execute if entity @s[tag=anim_editor_c2] run scoreboard players set $_sel_col _anim 2
execute if entity @s[tag=anim_editor_c3] run scoreboard players set $_sel_col _anim 3
execute if entity @s[tag=anim_editor_c4] run scoreboard players set $_sel_col _anim 4
execute if entity @s[tag=anim_editor_c5] run scoreboard players set $_sel_col _anim 5
execute if entity @s[tag=anim_editor_c6] run scoreboard players set $_sel_col _anim 6
execute if entity @s[tag=anim_editor_c7] run scoreboard players set $_sel_col _anim 7
execute if entity @s[tag=anim_editor_c8] run scoreboard players set $_sel_col _anim 8
execute if entity @s[tag=anim_editor_c9] run scoreboard players set $_sel_col _anim 9
execute if entity @s[tag=anim_editor_c10] run scoreboard players set $_sel_col _anim 10
execute if entity @s[tag=anim_editor_c11] run scoreboard players set $_sel_col _anim 11
execute if entity @s[tag=anim_editor_c12] run scoreboard players set $_sel_col _anim 12
execute if entity @s[tag=anim_editor_c13] run scoreboard players set $_sel_col _anim 13
execute if entity @s[tag=anim_editor_c14] run scoreboard players set $_sel_col _anim 14
execute if entity @s[tag=anim_editor_c15] run scoreboard players set $_sel_col _anim 15
execute if entity @s[tag=anim_editor_c16] run scoreboard players set $_sel_col _anim 16
execute if entity @s[tag=anim_editor_c17] run scoreboard players set $_sel_col _anim 17
execute if entity @s[tag=anim_editor_c18] run scoreboard players set $_sel_col _anim 18
execute if entity @s[tag=anim_editor_c19] run scoreboard players set $_sel_col _anim 19
tag @s add anim_editor_sel
execute if entity @s[tag=anim_editor0] run function anim:gui/editor/run/text/load_empty
execute if entity @s[tag=!anim_editor0] run function anim:gui/editor/run/search/load_keyframe/start
scoreboard players set $_new_key _anim 1
execute if entity @s[tag=!anim_editor0] run function anim:gui/editor/run/text/tab/rotate
scoreboard players reset $_new_key _anim