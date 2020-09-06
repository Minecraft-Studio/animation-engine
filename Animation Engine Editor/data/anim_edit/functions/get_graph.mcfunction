#
#>Returns graph name using graph index in array; to get it's data use anim:get_graph
# Input: $_get_graph;
# Output: got_graph
scoreboard players reset $_next_graph_exists _anim
execute unless data storage anim:editor search_graph run data remove storage anim:editor got_graph
execute unless data storage anim:editor search_graph run data modify storage anim:editor search_graph set from storage anim:runtime graphs
execute if score $_get_graph _anim matches 1 run data modify storage anim:editor got_graph set from storage anim:editor search_graph[0]
data remove storage anim:editor search_graph[0]
scoreboard players remove $_get_graph _anim 1
execute if data storage anim:editor search_graph[0] unless data storage anim:editor got_graph run function anim_edit:get_graph
execute if data storage anim:editor search_graph[0] run scoreboard players set $_next_graph_exists _anim 1
data remove storage anim:editor search_graph