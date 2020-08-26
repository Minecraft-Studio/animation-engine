execute unless score @s _anim_id_player matches -2147483648..2147483647 run scoreboard players add $next_available_id _anim 1
execute unless score @s _anim_id_player matches -2147483648..2147483647 run scoreboard players operation @s _anim_id_player = $next_available_id _anim
execute if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/menu
execute if score @s _anim_menu matches 3..7 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/load
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]