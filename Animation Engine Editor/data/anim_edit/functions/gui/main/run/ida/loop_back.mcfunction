#
#>Loop for searching for avaialble IDa for next
#>Check if IDa exists
scoreboard players reset $_found_ida _anim
execute as @e[tag=anim_main] if score @s _anim_ida = $lookfor_ida _anim run scoreboard players set $_found_ida _anim 1

#>If it doesn't exist, set it to the list
execute unless score $_found_ida _anim matches 1 if score $lookfor_ida _anim < @e[tag=anim_main_select,limit=1] _anim_ida run scoreboard players operation $prev_ida _anim = $lookfor_ida _anim

scoreboard players remove $lookfor_ida _anim 1
execute unless score $prev_ida _anim matches 0.. run function anim_edit:gui/main/run/ida/loop_back
