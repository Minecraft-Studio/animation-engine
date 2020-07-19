#>Loop for searching for avaialble IDb for next
#>Check if IDb exists
scoreboard players reset $_found_idb _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $lookfor_idb _anim run scoreboard players set $_found_idb _anim 1

#>If it doesn't exist, set it to the list
execute unless score $_found_idb _anim matches 1 if score $lookfor_idb _anim < @e[tag=anim_part_select,limit=1] _anim_idb run scoreboard players operation $prev_idb _anim = $lookfor_idb _anim

scoreboard players remove $lookfor_idb _anim 1
execute unless score $prev_idb _anim matches 0.. run function anim_edit:gui/main/run/idb/loop_back
