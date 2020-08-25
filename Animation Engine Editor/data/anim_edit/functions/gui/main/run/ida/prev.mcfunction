#>Sets to previous avaialble IDa
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run scoreboard players operation @s _anim_ida = $prev_ida _anim
scoreboard players operation @e[tag=anim_model_select] _anim_ida = $prev_ida _anim
function anim_edit:gui/main/load