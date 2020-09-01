function anim_edit:kill_nbt_as
execute if score @s _anim_menu matches 3 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu3/load
execute if score @s _anim_menu matches 4 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu4/load
execute if score @s _anim_menu matches 5 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu5/load
execute if score @s _anim_menu matches 6 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu6/load
execute if score @s _anim_menu matches 7 if score $runtime_exists _anim matches 1 run function anim_edit:gui/editor/load
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]