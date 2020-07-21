#Loads keyframe
# sets data to current selected keyframe
scoreboard players operation $_sel_col _anim = @s _anim_editor_col
scoreboard players operation $_sel_row _anim = @s _anim_editor_row
tag @s add anim_editor_sel
# loads text editor
scoreboard players set $_api_sel2 _anim 2
scoreboard players set $_api_endcomp _anim 2
function anim_edit:gui/editor/run/search/compile/start
