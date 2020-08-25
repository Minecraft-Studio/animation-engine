#>Checks if animations is done (stopped)
scoreboard players add $editor_play_tick _anim 1
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim matches 0.. run scoreboard players set $_anim_running _anim 1
execute unless score $_anim_running _anim matches 1 as @e[tag=anim_menu94] run function anim_edit:gui/editor/run/stop_play
scoreboard players reset $_anim_running _anim