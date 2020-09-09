execute if score $g_prev_value _anim < $g_value _anim run scoreboard players add $g_prev_value _anim 1
execute if score $g_prev_value _anim > $g_value _anim run scoreboard players remove $g_prev_value _anim 1
scoreboard players operation $g_prev_value_5 _anim = $g_prev_value _anim
scoreboard players operation $g_value_5 _anim = $g_value _anim
execute if score $g_prev_value_5 _anim matches ..19 run scoreboard players add $g_prev_value_5 _anim 1
execute if score $g_value_5 _anim matches ..19 run scoreboard players add $g_value_5 _anim 1

execute if score $g_tick_5 _anim matches 1 run function anim_edit:gui/graph_editor/col_white/1
execute if score $g_tick_5 _anim matches 2 run function anim_edit:gui/graph_editor/col_white/2
execute if score $g_tick_5 _anim matches 3 run function anim_edit:gui/graph_editor/col_white/3
execute if score $g_tick_5 _anim matches 4 run function anim_edit:gui/graph_editor/col_white/4
execute if score $g_tick_5 _anim matches 5 run function anim_edit:gui/graph_editor/col_white/5
execute if score $g_tick_5 _anim matches 6 run function anim_edit:gui/graph_editor/col_white/6
execute if score $g_tick_5 _anim matches 7 run function anim_edit:gui/graph_editor/col_white/7
execute if score $g_tick_5 _anim matches 8 run function anim_edit:gui/graph_editor/col_white/8
execute if score $g_tick_5 _anim matches 9 run function anim_edit:gui/graph_editor/col_white/9
execute if score $g_tick_5 _anim matches 10 run function anim_edit:gui/graph_editor/col_white/10
execute if score $g_tick_5 _anim matches 11 run function anim_edit:gui/graph_editor/col_white/11
execute if score $g_tick_5 _anim matches 12 run function anim_edit:gui/graph_editor/col_white/12
execute if score $g_tick_5 _anim matches 13 run function anim_edit:gui/graph_editor/col_white/13
execute if score $g_tick_5 _anim matches 14 run function anim_edit:gui/graph_editor/col_white/14
execute if score $g_tick_5 _anim matches 15 run function anim_edit:gui/graph_editor/col_white/15
execute if score $g_tick_5 _anim matches 16 run function anim_edit:gui/graph_editor/col_white/16
execute if score $g_tick_5 _anim matches 17 run function anim_edit:gui/graph_editor/col_white/17
execute if score $g_tick_5 _anim matches 18 run function anim_edit:gui/graph_editor/col_white/18
execute if score $g_tick_5 _anim matches 19 run function anim_edit:gui/graph_editor/col_white/19
execute if score $g_tick_5 _anim matches 20 run function anim_edit:gui/graph_editor/col_white/20


# loop until the prev and this value match (to make the graph look like a line instead of jumping from 1 point to another (to fix if jumping from 1% to 70% really fast or something))
execute unless score $g_prev_value_5 _anim = $g_value_5 _anim run function anim_edit:gui/graph_editor/render