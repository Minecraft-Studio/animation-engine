execute unless score @s _anim_id_player matches -2147483648..2147483647 run data modify storage anim:editor value_edit_shortcuts set value {remove3:[4000,4,0],remove2:[1000,1,0],remove1:[250,0,2,5],add1:[250,0,2,5],add2:[1000,1,0],add3:[4000,4,0]}
execute unless score @s _anim_id_player matches -2147483648..2147483647 run data modify storage anim:editor value_move_shortcuts set value {remove2:5,remove1:1,add1:1,add2:5,add3:10}
execute unless score @s _anim_id_player matches -2147483648..2147483647 store result storage anim:editor value_edit_shortcuts.id int 1 store result storage anim:editor value_move_shortcuts.id int 1 run scoreboard players add $next_available_id _anim 1
execute unless score @s _anim_id_player matches -2147483648..2147483647 run data modify storage anim:editor edit_shortcuts append from storage anim:editor value_edit_shortcuts
execute unless score @s _anim_id_player matches -2147483648..2147483647 run data modify storage anim:editor move_shortcuts append from storage anim:editor value_move_shortcuts
execute unless score @s _anim_id_player matches -2147483648..2147483647 run scoreboard players operation @s _anim_id_player = $next_available_id _anim
execute if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/menu
execute if score @s _anim_menu matches 3..7 if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/load
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]