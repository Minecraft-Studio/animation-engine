execute if score $g_1_t _anim matches 1 run function anim_edit:gui/graph_editor/col_select/1
execute if score $g_1_t _anim matches 2 run function anim_edit:gui/graph_editor/col_select/2
execute if score $g_1_t _anim matches 3 run function anim_edit:gui/graph_editor/col_select/3
execute if score $g_1_t _anim matches 4 run function anim_edit:gui/graph_editor/col_select/4
execute if score $g_1_t _anim matches 5 run function anim_edit:gui/graph_editor/col_select/5
execute if score $g_1_t _anim matches 6 run function anim_edit:gui/graph_editor/col_select/6
execute if score $g_1_t _anim matches 7 run function anim_edit:gui/graph_editor/col_select/7
execute if score $g_1_t _anim matches 8 run function anim_edit:gui/graph_editor/col_select/8
execute if score $g_1_t _anim matches 9 run function anim_edit:gui/graph_editor/col_select/9
execute if score $g_1_t _anim matches 10 run function anim_edit:gui/graph_editor/col_select/10
execute if score $g_1_t _anim matches 11 run function anim_edit:gui/graph_editor/col_select/11
execute if score $g_1_t _anim matches 12 run function anim_edit:gui/graph_editor/col_select/12
execute if score $g_1_t _anim matches 13 run function anim_edit:gui/graph_editor/col_select/13
execute if score $g_1_t _anim matches 14 run function anim_edit:gui/graph_editor/col_select/14
execute if score $g_1_t _anim matches 15 run function anim_edit:gui/graph_editor/col_select/15
execute if score $g_1_t _anim matches 16 run function anim_edit:gui/graph_editor/col_select/16
execute if score $g_1_t _anim matches 17 run function anim_edit:gui/graph_editor/col_select/17
execute if score $g_1_t _anim matches 18 run function anim_edit:gui/graph_editor/col_select/18
execute if score $g_1_t _anim matches 19 run function anim_edit:gui/graph_editor/col_select/19
execute if score $g_1_t _anim matches 20 run function anim_edit:gui/graph_editor/col_select/20
execute store result score $g_point_x _anim run data get storage anim:editor green_graph[0].x
execute store result score $g_point_y _anim run data get storage anim:editor green_graph[0].y
execute if data storage anim:editor green_graph[1] run scoreboard players set $g_next_point_exists _anim 1