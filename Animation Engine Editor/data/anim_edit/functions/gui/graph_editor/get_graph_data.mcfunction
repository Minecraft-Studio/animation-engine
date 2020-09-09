#
#>Returns graph x y
# Input: $g_get_col
# Output: got_graph; $g_index
execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_get_graph _anim = @s _anim_sett_graph
execute unless data storage anim:editor search_graph[0] run function anim_edit:get_graph
execute unless data storage anim:editor search_graph[0] run scoreboard players set $g_index _anim 0
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor search_graph set from storage anim:editor got_graph.data
scoreboard players add $g_index _anim 1
data remove storage anim:editor got_graph
scoreboard players reset $g_1_t _anim
execute store result score $g_1_t _anim run data get storage anim:editor search_graph[0].x
scoreboard players operation $g_1_t _anim /= $5 _anim
execute if score $g_1_t _anim = $g_get_col _anim run data modify storage anim:editor got_graph set from storage anim:editor search_graph[0]
data remove storage anim:editor search_graph[0]
execute if data storage anim:editor search_graph[0] unless data storage anim:editor got_graph run function anim_edit:gui/graph_editor/get_graph_data
data remove storage anim:editor search_graph