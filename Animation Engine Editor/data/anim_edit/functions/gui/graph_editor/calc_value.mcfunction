
#
#>OLD MATH FORUMLA: current_tick / next_point_tick * (next_point_value - first_point_value) + first_point_value / 5
#>NEW MATH FORUMLA: (v2-v1)/(t2-t1)
# current_tick
scoreboard players operation $g_calc_value _anim = $g_2_v _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
scoreboard players operation $g_calc_value _anim -= $g_1_v _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
scoreboard players operation $g_calc_value _anim *= $100 _anim
scoreboard players operation $g_math_t _anim = $g_2_t _anim
scoreboard players operation $g_math_t _anim -= $g_1_t _anim
scoreboard players operation $g_calc_value _anim /= $g_math_t _anim
scoreboard players reset $g_math_t _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"gold"}]
# scoreboard players operation $g_calc_value _anim /= $5 _anim
# execute if score $g_calc_value _anim matches 0 run scoreboard players set $g_calc_value _anim 1
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
# scoreboard players operation $g_calc_value _anim *= $100 _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
# # / next_point_tick
# scoreboard players operation $g_calc_value _anim /= $g_2_t _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
# # next_point_value - first_point_value
# # * (next_point_value - first_point_value)
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
# # scoreboard players operation $g_calc_value _anim /= $10 _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]
# # + first_point_value
# # scoreboard players operation $g_calc_value _anim += $g_1_v _anim
# # / 5
# scoreboard players operation $g_calc_value _anim /= $5 _anim
# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"yellow"}]

# tellraw @p [":Cg_calc_valuealc:",{"score":{"name":"$g_calc_value","objective":"_anim"},"color":"gold"}]

