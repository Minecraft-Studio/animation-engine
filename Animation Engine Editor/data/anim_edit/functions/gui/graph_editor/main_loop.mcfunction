#
#>Get first and second point
scoreboard players reset $g_1_v _anim
scoreboard players reset $g_1_t _anim
scoreboard players reset $g_2_t _anim
scoreboard players reset $g_2_t_5 _anim
scoreboard players reset $g_2_v _anim
execute store result score $g_1_t _anim run data get storage anim:editor got_graph[0].x
execute store result score $g_1_v _anim run data get storage anim:editor got_graph[0].y
execute if data storage anim:editor got_graph[1] store result score $g_2_t _anim store result score $g_2_t_5 _anim run data get storage anim:editor got_graph[1].x
execute if data storage anim:editor got_graph[1] store result score $g_2_v _anim run data get storage anim:editor got_graph[1].y
scoreboard players operation $g_2_t_5 _anim /= $5 _anim
# If no second point (last point), set it to 100
execute unless data storage anim:editor got_graph[1] run scoreboard players set $g_2_t _anim 100
execute unless data storage anim:editor got_graph[1] run scoreboard players set $g_2_t_5 _anim 20
execute unless data storage anim:editor got_graph[1] run scoreboard players set $g_2_v _anim 100
# tellraw @p [":!:",{"score":{"name":"$g_2_t_5","objective":"_anim"},"color":"blue"}]
# tellraw @p [":!:",{"nbt":"got_graph","storage":"anim:editor","color":"green"}]
# tellraw @p [":!:",{"score":{"name":"$g_2_t","objective":"_anim"}}]
tellraw @p [":!:",{"score":{"name":"$g_2_v","objective":"_anim"}}]
#>Calculate
# scoreboard players operation $g_tick _anim = $g_1_t _anim
function anim_edit:gui/graph_editor/calc_value
scoreboard players operation $g_value_real _anim = $g_1_v _anim
scoreboard players operation $g_value_real _anim /= $5 _anim
scoreboard players operation $g_value_real _anim *= $100 _anim
# tellraw @p [":---->:",{"score":{"name":"$g_value_real","objective":"_anim"},"color":"red"}]
#>Render until it hits the target tick ($g_2_t_5)
function anim_edit:gui/graph_editor/render_loop


data remove storage anim:editor got_graph[0]
execute if data storage anim:editor got_graph[0] run function anim_edit:gui/graph_editor/main_loop