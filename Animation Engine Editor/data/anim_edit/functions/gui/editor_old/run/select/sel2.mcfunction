#Loads keyframe
# sets data to current selected keyframe
scoreboard players operation $_sel_col _anim = @s _anim_editor_col
scoreboard players operation $_sel_row _anim = @s _anim_editor_row
tag @s add anim_editor_sel
data remove storage anim:editor anim_prev_key
# loads text editor
execute if entity @s[tag=anim_editor0] run scoreboard players set $_api_sel2 _anim 2
execute if entity @s[tag=anim_editor0] run scoreboard players set $_api_endcomp _anim 2
execute if entity @s[tag=anim_editor0] run function anim_edit:gui/editor/run/search/compile/start
execute if entity @s[tag=!anim_editor0] run scoreboard players set $_api_sel2 _anim 1
execute if entity @s[tag=!anim_editor0] run function anim_edit:gui/editor/run/search/load_keyframe/start