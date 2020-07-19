#>Deletes selected Anim Part
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run kill @s
kill @e[tag=anim_main_select]
scoreboard players set $show_menu _anim 3
function anim_edit:gui/main/load