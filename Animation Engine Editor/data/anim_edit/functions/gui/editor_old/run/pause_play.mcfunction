#
#>Toggles pause in play
function anim_edit:search_model
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim matches 1.. run scoreboard players set $editor_play _anim 2
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim matches 1.. run scoreboard players set @s _anim -2
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim matches -1 run scoreboard players set $editor_play _anim 1
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim matches -1 run scoreboard players operation @s _anim = $animation_id _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim matches -2 run scoreboard players set @s _anim -1
function anim_edit:gui/editor/reset
execute as @e[tag=anim_menu80] run function anim_edit:gui/editor/reset