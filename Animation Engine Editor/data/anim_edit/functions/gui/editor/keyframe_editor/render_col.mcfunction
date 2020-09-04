function anim_edit:get_anim_keyframe

#sets if keyframe is selected by user
scoreboard players reset $_key_selected _anim
execute if score $_get_tick _anim = @s _anim_editor_col if score $_get_part _anim = @s _anim_editor_row run scoreboard players set $_key_selected _anim 1
#sets if keyframe is selected by anyone
scoreboard players reset $_key_selected_all _anim
execute as @a if score $_get_tick _anim = @s _anim_editor_col if score $_get_part _anim = @s _anim_editor_row run scoreboard players set $_key_selected_all _anim 1

execute if score $_render_row _anim matches 1 run function anim_edit:gui/editor/keyframe_editor/get_render/row1
execute if score $_render_row _anim matches 2 run function anim_edit:gui/editor/keyframe_editor/get_render/row2
execute if score $_render_row _anim matches 3 run function anim_edit:gui/editor/keyframe_editor/get_render/row3
execute if score $_render_row _anim matches 4 run function anim_edit:gui/editor/keyframe_editor/get_render/row4
execute if score $_render_row _anim matches 5 run function anim_edit:gui/editor/keyframe_editor/get_render/row5
execute if score $_render_row _anim matches 6 run function anim_edit:gui/editor/keyframe_editor/get_render/row6
execute if score $_render_row _anim matches 7 run function anim_edit:gui/editor/keyframe_editor/get_render/row7
data modify storage anim:editor row_result append from storage anim:editor append_col
data remove storage anim:editor append_col

scoreboard players add $_get_tick _anim 1
execute if score $_render_row _anim matches 1 store result storage anim:editor col_preview_append.tick int 1 run scoreboard players get $_get_tick _anim
execute if score $_render_row _anim matches 1 run function anim_edit:gui/editor/keyframe_editor/tick_to_sec
execute if score $_render_row _anim matches 1 store result storage anim:editor col_preview_append.sec1 int 1 run scoreboard players get $_sec1 _anim
execute if score $_render_row _anim matches 1 store result storage anim:editor col_preview_append.sec2 int 1 run scoreboard players get $_sec2 _anim
execute if score $_render_row _anim matches 1 store result storage anim:editor col_preview_append.sec3 int 1 run scoreboard players get $_sec3 _anim
execute if score $_render_row _anim matches 1 run data modify storage anim:editor col_preview append from storage anim:editor col_preview_append
scoreboard players add $_render_col _anim 1
execute if score $_render_col _anim matches ..40 run function anim_edit:gui/editor/keyframe_editor/render_col