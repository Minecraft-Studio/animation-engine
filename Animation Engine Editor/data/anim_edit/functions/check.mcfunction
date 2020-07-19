#>Checks if Animation Engine Runtime is enabled, if not message all users
execute store success score $runtime_exists _anim run function anim:checker
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]
#>If installed, re-open the menu 
execute as @p[tag=anim_user] if score $show_menu _anim matches 3..6 run function anim_edit:gui/main/load