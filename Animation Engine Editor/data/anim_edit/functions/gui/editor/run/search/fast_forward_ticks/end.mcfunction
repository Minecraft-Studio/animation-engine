execute unless score $_api_endcomp _anim matches 4 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run function anim:end_animation
scoreboard players reset $_fast_tick _anim
scoreboard players reset $_fast_time_left _anim
scoreboard players reset $_fast_loop _anim
bossbar remove _anim_prgbar_fast
execute if score $_api_endcomp _anim matches 1 run function anim_edit:gui/editor/run/search/load_keyframe/start_2
execute if score $_api_endcomp _anim matches 2 run function anim_edit:gui/editor/run/text/load_empty
execute if score $_api_endcomp _anim matches 4 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run scoreboard players operation @s _anim = $animation_id _anim
execute if score $_api_endcomp _anim matches 4 run scoreboard players set $editor_play _anim 1
execute if score $_api_endcomp _anim matches 4 as @e[tag=anim_menu_play] run function anim_edit:gui/editor/reset
execute if score $_api_endcomp _anim matches 4 run scoreboard players reset $_api_endcomp _anim 

