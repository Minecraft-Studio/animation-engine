function anim_edit:gui/graph_editor/get_graph_data
execute if data storage anim:editor got_graph run scoreboard players operation @s _anim_graph_key = $g_index _anim
execute unless data storage anim:editor got_graph run scoreboard players operation $g_set_x _anim = $g_get_col _anim
execute unless data storage anim:editor got_graph run scoreboard players operation $g_set_x _anim *= $5 _anim
execute unless data storage anim:editor got_graph run scoreboard players operation $g_set_y _anim = $g_get_row _anim
execute unless data storage anim:editor got_graph run scoreboard players operation $g_set_y _anim *= $5 _anim
execute unless data storage anim:editor got_graph run function anim_edit:gui/graph_editor/set_point
execute as @a[scores={_anim_graph_key=1..}] run function anim_edit:gui/graph_editor/load