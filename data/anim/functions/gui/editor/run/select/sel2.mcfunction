#Loads keyframe
# sets data to current selected keyframe
scoreboard players operation $_sel_col _anim = @s _anim_editor_col
scoreboard players operation $_sel_row _anim = @s _anim_editor_row
tag @s add anim_editor_sel
# loads text editor
execute if entity @s[tag=anim_editor0] run function anim:gui/editor/run/text/load_empty
execute if entity @s[tag=!anim_editor0] run function anim:gui/editor/run/search/load_keyframe/start

scoreboard players set $_new_key _anim 1
execute if entity @s[tag=!anim_editor0] run function anim:gui/editor/run/text/tab/rotate
scoreboard players reset $_new_key _anim