# kill nbt armor stand
function anim_edit:kill_nbt_as
# reset settings graph and remove the obj if empty
scoreboard players reset @s _anim_sett_graph
scoreboard players reset @s _anim_graph_key
# refresh menu to everyone (if _anim_sett_graph is 1 or higher that means settings is open)
# execute if score $runtime_exists _anim matches 1 run say 1
# execute as @a[scores={_anim_menu=3}] unless score @s _anim_settings matches 1 run say 2
# execute as @a[scores={_anim_menu=3}] unless score @s _anim_sett_graph matches 1.. run say 3
execute if score $runtime_exists _anim matches 1 as @a[scores={_anim_menu=3}] unless score @s _anim_settings matches 1 unless score @s _anim_sett_graph matches 1.. run function anim_edit:gui/main/run/menu3/load
execute if score $runtime_exists _anim matches 1 as @a[scores={_anim_menu=4}] unless score @s _anim_settings matches 1 unless score @s _anim_sett_graph matches 1.. run function anim_edit:gui/main/run/menu4/load
execute if score $runtime_exists _anim matches 1 as @a[scores={_anim_menu=5}] unless score @s _anim_settings matches 1 unless score @s _anim_sett_graph matches 1.. run function anim_edit:gui/main/run/menu5/load
execute if score $runtime_exists _anim matches 1 as @a[scores={_anim_menu=6}] unless score @s _anim_settings matches 1 unless score @s _anim_sett_graph matches 1.. run function anim_edit:gui/main/run/menu6/load
execute if score $runtime_exists _anim matches 1 as @a[scores={_anim_menu=7}] unless score @s _anim_settings matches 1 unless score @s _anim_sett_graph matches 1.. run function anim_edit:gui/editor/load
execute if score $runtime_exists _anim matches 1 as @a[scores={_anim_settings=1}] unless score @s _anim_sett_graph matches 1.. run function anim_edit:gui/settings/load

execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]

#>Gamerule
function anim_edit:gamerule