#
#>Sets to previous avaialble IDb
function anim_edit:search_part
scoreboard players operation @e[tag=anim_part_select] _anim_idb = $prev_idb _anim
scoreboard players operation @s _anim_idb_select = $prev_idb _anim
function anim_edit:gui/main/load