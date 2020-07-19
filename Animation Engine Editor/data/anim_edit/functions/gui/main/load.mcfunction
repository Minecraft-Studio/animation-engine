execute if score $show_menu _anim matches 3 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu3/load
execute if score $show_menu _anim matches 4 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu4/load
execute if score $show_menu _anim matches 5 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu5/load
execute if score $show_menu _anim matches 6 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu6/load
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]