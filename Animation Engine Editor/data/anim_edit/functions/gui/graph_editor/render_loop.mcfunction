scoreboard players operation $g_tick_5 _anim = $g_tick _anim
scoreboard players operation $g_tick_5 _anim /= $5 _anim
# execute if score $g_value _anim matches ..19 run scoreboard players add $g_value _anim 1
#>Calculate
scoreboard players operation $g_value_real _anim += $g_calc_value _anim
scoreboard players operation $g_value _anim = $g_value_real _anim
scoreboard players operation $g_value _anim /= $100 _anim
#>Render
function anim_edit:gui/graph_editor/render
scoreboard players operation $g_prev_value _anim = $g_value _anim
scoreboard players add $g_tick _anim 5
scoreboard players operation $g_tick_5 _anim = $g_tick _anim
scoreboard players operation $g_tick_5 _anim /= $5 _anim
# execute if score $g_value _anim matches ..19 run scoreboard players add $g_value _anim 1
execute unless score $g_tick_5 _anim > $g_2_t_5 _anim run function anim_edit:gui/graph_editor/render_loop