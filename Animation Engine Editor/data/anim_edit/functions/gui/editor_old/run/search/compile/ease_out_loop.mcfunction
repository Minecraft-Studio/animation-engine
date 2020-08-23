#Calculates ease out, loop
scoreboard players operation $_comp_value_add _anim += $_comp_value_ease_add _anim
scoreboard players remove $_comp_value_tick3 _anim 1
execute if score $_comp_value_tick3 _anim matches 2.. run function anim_edit:gui/editor/run/search/compile/ease_out_loop


