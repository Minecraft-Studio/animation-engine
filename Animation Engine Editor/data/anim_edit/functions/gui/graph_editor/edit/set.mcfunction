execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_graph_key _anim = @s _anim_graph_key
execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_get_graph _anim = @s _anim_sett_graph
execute unless data storage anim:editor search_graph[0] run function anim_edit:get_graph
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor output_graph set value []
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor search_graph set from storage anim:editor got_graph.data
data remove storage anim:editor got_graph

execute if score $_graph_key _anim matches 1 run execute store result score $g_set_x _anim run data get storage anim:editor search_graph[0].x
execute if score $_graph_key _anim matches 1 run execute store result score $g_set_y _anim run data get storage anim:editor search_graph[0].y
execute if score $_graph_key _anim matches 1 run execute store result storage anim:editor search_graph[0].x int 1 run scoreboard players operation $g_set_x _anim += $g_x_add _anim
execute if score $_graph_key _anim matches 1 run execute store result storage anim:editor search_graph[0].y int 1 run scoreboard players operation $g_set_y _anim += $g_y_add _anim
data modify storage anim:editor output_graph append from storage anim:editor search_graph[0]
data remove storage anim:editor search_graph[0]
scoreboard players remove $_graph_key _anim 1

execute if data storage anim:editor search_graph[0] run function anim_edit:gui/graph_editor/edit/set
data remove storage anim:editor search_graph
execute if data storage anim:editor output_graph run function anim_edit:set_graph
execute if data storage anim:editor output_graph run function anim_edit:gui/graph_editor/load
data remove storage anim:editor output_graph
scoreboard players reset $g_x_add _anim
scoreboard players reset $g_y_add _anim