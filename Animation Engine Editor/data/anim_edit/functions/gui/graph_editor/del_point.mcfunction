#
#>Deletes selected point
# Input: @s _anim_graph_key
# Output: 
execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_graph_key _anim = @s _anim_graph_key
execute unless data storage anim:editor search_graph[0] run scoreboard players operation $_get_graph _anim = @s _anim_sett_graph
execute unless data storage anim:editor search_graph[0] run function anim_edit:get_graph
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor output_graph set value []
execute unless data storage anim:editor search_graph[0] run data modify storage anim:editor search_graph set from storage anim:editor got_graph.data
data remove storage anim:editor got_graph

execute unless score $_graph_key _anim matches 1 run data modify storage anim:editor output_graph append from storage anim:editor search_graph[0]
scoreboard players remove $_graph_key _anim 1
data remove storage anim:editor search_graph[0]

execute if data storage anim:editor search_graph[0] run function anim_edit:gui/graph_editor/del_point
data remove storage anim:editor search_graph
execute if data storage anim:editor output_graph run scoreboard players remove @s _anim_graph_key 1
execute if data storage anim:editor output_graph run function anim_edit:set_graph
data remove storage anim:editor output_graph