#>Checks if Animation Engine Runtime is enabled, if not message all users
execute store success score $runtime_exists _anim run function anim:checker
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]
#>If installed, re-open the menu 
execute as @a[scores={_anim_menu=3..6}] at @s run function anim_edit:gui/main/load