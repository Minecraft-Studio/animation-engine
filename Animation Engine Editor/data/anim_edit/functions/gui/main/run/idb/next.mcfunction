#
#>Sets to next avaialble IDb
function anim_edit:search_part
scoreboard players operation @e[tag=anim_part_select] _anim_idb = $next_idb _anim
scoreboard players operation @s _anim_idb_select = $next_idb _anim
function anim_edit:gui/main/load