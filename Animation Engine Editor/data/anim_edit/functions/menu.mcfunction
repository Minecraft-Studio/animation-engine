execute if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/menu
execute if score @s _anim_menu matches 3..7 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/load
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]