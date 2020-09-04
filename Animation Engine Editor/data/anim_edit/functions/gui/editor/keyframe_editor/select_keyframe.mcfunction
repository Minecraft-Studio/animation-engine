scoreboard players remove $_sel_col _anim 1
scoreboard players remove $_sel_row _anim 1
scoreboard players operation $_sel_col _anim += @s _anim_page
scoreboard players operation $_sel_row _anim += @s _anim_row_page

function anim_edit:gui/editor/keyframe_editor/get_sel_keyframes

#checks if the selected keyframe is already selected, if yes deselect it
scoreboard players reset $_key_selected _anim
execute if score $_sel_col _anim = @s _anim_editor_col if score $_sel_row _anim = @s _anim_editor_row run scoreboard players set $_key_selected _anim 1
execute if score $_key_selected _anim matches 1 run scoreboard players reset @s _anim_editor_col
execute if score $_key_selected _anim matches 1 run scoreboard players reset @s _anim_editor_row
execute unless score $_key_selected _anim matches 1 run scoreboard players operation @s _anim_editor_col = $_sel_col _anim
execute unless score $_key_selected _anim matches 1 run scoreboard players operation @s _anim_editor_row = $_sel_row _anim

function anim_edit:gui/main/load