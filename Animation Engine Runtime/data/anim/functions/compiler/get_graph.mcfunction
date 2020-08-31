#
#>Converts graph name with its data
# Input: get_graph; search_graph
# Output: got_keyframe.got_graph
data modify storage anim:runtime got_graph set value []
scoreboard players reset $_graph_name_check _anim
data modify storage anim:runtime graph_name_check set from storage anim:runtime get_graph
execute store success score $_graph_name_check _anim run data modify storage anim:runtime graph_name_check set from storage anim:runtime search_graph[0].name
execute if score $_graph_name_check _anim matches 0 run data modify storage anim:runtime got_keyframe.got_graph set from storage anim:runtime search_graph[0].data
data remove storage anim:runtime search_graph[0]
execute unless score $_graph_name_check _anim matches 0 run function anim:compiler/get_graph
data remove storage anim:runtime search_graph
scoreboard players reset $_graph_name_check _anim
data remove storage anim:runtime get_graph