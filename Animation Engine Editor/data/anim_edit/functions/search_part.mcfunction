#
#>Gives tag 'anim_main_part' to model that have the same idb number as player _anim_idb_select
function anim_edit:search_model
tag @s add anim_search_part
#Code no longer selects just anim_part, it is now selecting all anim tags (main and part) since animating main is now possible
execute as @e[tag=anim] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = @p[tag=anim_search_part] _anim_idb_select run tag @s add anim_part_select
tag @s remove anim_search_part