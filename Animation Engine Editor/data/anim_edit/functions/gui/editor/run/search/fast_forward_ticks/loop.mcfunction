#bossbar

scoreboard players operation $_fast_time_left _anim = $_key_col _anim
scoreboard players operation $_fast_time_left _anim -= $_fast_tick _anim
scoreboard players operation $_fast_time_left _anim /= $sett_compile _anim
scoreboard players operation $_fast_time_left _anim /= $20 _anim
bossbar set _anim_prgbar_fast name ["",{"text":"Loading... ","color":"gray"},{"text":"(apx. ","color":"gray"},{"score":{"name":"$_fast_time_left","objective":"_anim"},"color":"gray"},{"text":" seconds left)","color":"gray"}]

scoreboard players add $_fast_tick _anim 1
execute store result bossbar _anim_prgbar_fast value run scoreboard players get $_fast_tick _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run function anim:keyframe_tick
# execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run tellraw @p [{"score": {"name": "$_fast_tick","objective": "_anim"},"color":"gold"},{"text":"/"},{"score": {"name": "@s","objective": "_anim_tick"},"color":"gold"},{"text":" / ","color":"red"},{"score": {"name": "$_key_col","objective": "_anim"},"color":"gold"}]

scoreboard players add $_fast_loop _anim 1
execute unless score $_fast_tick _anim >= $_key_col _anim unless score $_fast_loop _anim > $sett_compile _anim run function anim_edit:gui/editor/run/search/fast_forward_ticks/loop
execute unless score $_fast_tick _anim >= $_key_col _anim if score $_fast_loop _anim > $sett_compile _anim run schedule function anim_edit:gui/editor/run/search/fast_forward_ticks/loop 1t
execute unless score $_fast_tick _anim >= $_key_col _anim if score $_fast_loop _anim > $sett_compile _anim run scoreboard players set $_fast_loop _anim 1
execute if score $_fast_tick _anim >= $_key_col _anim run function anim_edit:gui/editor/run/search/fast_forward_ticks/end