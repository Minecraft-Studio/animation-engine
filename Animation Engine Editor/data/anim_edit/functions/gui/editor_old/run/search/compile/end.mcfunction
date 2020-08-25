#reset everything
scoreboard players reset $comp_keyf _anim
scoreboard players reset $comp_max_t _anim
scoreboard players reset $_comp_kdone _anim
scoreboard players reset $_comp_kleft _anim
scoreboard players reset $_get_tick _anim
scoreboard players reset $_get_part _anim
scoreboard players reset $_comp_time_left _anim
scoreboard players reset $_comp_value_ease_add _anim
scoreboard players reset $_comp_value_tick _anim
scoreboard players reset $_comp_value_tick2 _anim
scoreboard players reset $_comp_value_tick3 _anim
scoreboard players reset $_comp_value_add _anim
scoreboard players reset $_comp_value_ease_add2 _anim
bossbar remove _anim_prgbar
scoreboard players reset $1000 _anim
execute unless score $_api_endcomp _anim matches 1.. run tellraw @a {"text":"Compiling keyframes finished!","color":"gold"}
execute if score $_api_endcomp _anim matches 1..2 run function anim_edit:gui/editor/run/search/fast_forward_ticks/start
execute if score $_api_endcomp _anim matches 2 if entity @s[tag=!anim_editor0] run scoreboard players set $_api_sel2 _anim 1
execute if score $_api_endcomp _anim matches 2 if entity @s[tag=!anim_editor0] run function anim_edit:gui/editor/run/search/load_keyframe/start
execute if score $_api_endcomp _anim matches 3 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run function anim:setup_anim
execute if score $_api_endcomp _anim matches 3 run scoreboard players set $editor_play _anim 1
execute if score $_api_endcomp _anim matches 3 as @e[tag=anim_menu_play] run function anim_edit:gui/editor/reset
execute if score $_api_endcomp _anim matches 3 run scoreboard players reset $_api_endcomp _anim 
execute if score $_api_endcomp _anim matches 4 run function anim_edit:gui/editor/run/search/fast_forward_ticks/start
execute if score $_api_endcomp _anim matches 5 run function anim_edit:gui/editor/run/save_and_close2
