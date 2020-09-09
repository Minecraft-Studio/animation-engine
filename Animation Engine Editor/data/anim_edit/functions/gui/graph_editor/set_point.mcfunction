#
#>Adds row and col to graph data sorted
# Input: $g_set_x; $g_set_y; _anim_sett_graph
# Output: @s _anim_graph_key
execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_get_graph _anim = @s _anim_sett_graph
execute unless data storage anim:editor search_graph[0] run function anim_edit:get_graph
execute unless data storage anim:editor search_graph[0] run scoreboard players set @s _anim_graph_key 0
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor import_point set value {}
execute unless data storage anim:editor search_graph[0] store result storage anim:editor import_point.x int 1 run scoreboard players get $g_set_x _anim
execute unless data storage anim:editor search_graph[0] store result storage anim:editor import_point.y int 1 run scoreboard players get $g_set_y _anim
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor output_graph set value []
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor search_graph set from storage anim:editor got_graph.data
data remove storage anim:editor got_graph
scoreboard players reset $g_1_t _anim
scoreboard players reset $g_2_t _anim
execute unless score @s _anim_graph_key matches 0 store result score $g_1_t _anim run data get storage anim:editor search_graph[0].x
execute unless score @s _anim_graph_key matches 0 if data storage anim:editor search_graph[1] store result score $g_2_t _anim run data get storage anim:editor search_graph[1].x
execute unless score @s _anim_graph_key matches 0 unless data storage anim:editor search_graph[1] run scoreboard players set $g_2_t _anim 100
execute if score @s _anim_graph_key matches 0 run scoreboard players set $g_1_t _anim 0
execute if score @s _anim_graph_key matches 0 if data storage anim:editor search_graph[0] store result score $g_2_t _anim run data get storage anim:editor search_graph[0].x
execute if score @s _anim_graph_key matches 0 unless data storage anim:editor search_graph[0] run scoreboard players set $g_2_t _anim 100

execute unless score @s _anim_graph_key matches 0 run data modify storage anim:editor output_graph append from storage anim:editor search_graph[0]
execute unless score @s _anim_graph_key matches 0 run data remove storage anim:editor search_graph[0]
execute if data storage anim:editor import_point run scoreboard players add @s _anim_graph_key 1
execute if score $g_1_t _anim < $g_set_x _anim if score $g_2_t _anim > $g_set_x _anim run data modify storage anim:editor output_graph append from storage anim:editor import_point
execute if score $g_1_t _anim < $g_set_x _anim if score $g_2_t _anim > $g_set_x _anim run data remove storage anim:editor import_point
# execute if score $g_1_t _anim < $g_set_x _anim if score $g_2_t _anim > $g_set_x _anim unless score @s _anim_graph_key matches 0 run scoreboard players add @s _anim_graph_key 1

execute if data storage anim:editor search_graph[0] run function anim_edit:gui/graph_editor/set_point
data remove storage anim:editor search_graph
execute if data storage anim:editor output_graph run function anim_edit:set_graph
data remove storage anim:editor output_graph
data remove storage anim:editor import_point