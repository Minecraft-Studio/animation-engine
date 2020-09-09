#
#>Returns graph name using graph index in array; to get it's data use anim:get_graph
# Input: @s _anim_sett_graph; output_graph
# Output:
execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_get_graph _anim = @s _anim_sett_graph
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor output_graphs set value []
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor search_graph set from storage anim:runtime graphs
execute if score $_get_graph _anim matches 1 run data modify storage anim:editor search_graph[0].data set from storage anim:editor output_graph
data modify storage anim:editor output_graphs append from storage anim:editor search_graph[0]
data remove storage anim:editor search_graph[0]
scoreboard players remove $_get_graph _anim 1
execute if data storage anim:editor search_graph[0] run function anim_edit:set_graph
data remove storage anim:editor search_graph
execute if data storage anim:editor output_graphs run data modify storage anim:runtime graphs set from storage anim:editor output_graphs
data remove storage anim:editor output_graphs