#
#>Get data
scoreboard players reset $g_1_t _anim
scoreboard players reset $g_1_v _anim
execute store result score $g_1_t _anim run data get storage anim:editor green_graph[0].x
execute store result score $g_1_v _anim run data get storage anim:editor green_graph[0].y
scoreboard players operation $g_1_t _anim /= $5 _anim
scoreboard players operation $g_1_v _anim /= $5 _anim
execute if score $g_1_v _anim matches 0 run scoreboard players set $g_1_v _anim 1
#>Render green points
execute unless score $g_render_green _anim = @s _anim_graph_key run function anim_edit:gui/graph_editor/col_green/set
execute if score $g_render_green _anim = @s _anim_graph_key run function anim_edit:gui/graph_editor/col_select/set

scoreboard players add $g_render_green _anim 1
data remove storage anim:editor green_graph[0]
execute if data storage anim:editor green_graph[0] run function anim_edit:gui/graph_editor/green_loop