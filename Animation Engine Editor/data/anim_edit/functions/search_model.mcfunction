#
#>Gives tag 'anim_main_select' to model that have the same ida number as player _anim_ida_select
function anim_edit:deselect_anim
tag @s add anim_search_model
execute as @e[tag=anim_main] if score @s _anim_ida = @p[tag=anim_search_model,limit=1] _anim_ida_select run tag @s add anim_main_select
tag @s remove anim_search_model