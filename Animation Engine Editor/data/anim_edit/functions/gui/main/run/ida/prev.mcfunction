#
#>Sets to previous avaialble IDa
function anim_edit:search_model
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run scoreboard players operation @s _anim_ida = $prev_ida _anim
scoreboard players operation @e[tag=anim_main_select] _anim_ida = $prev_ida _anim
scoreboard players operation @s _anim_ida_select = $prev_ida _anim
function anim_edit:gui/main/load