execute if entity @s[tag=anim_menu6] run function anim_edit:gui/add/run/hover/select/1
execute if entity @s[tag=anim_menu7] run function anim_edit:gui/add/run/hover/select/2
execute if entity @s[tag=anim_menu8] run function anim_edit:gui/add/run/hover/select/3
execute if entity @s[tag=anim_menu9] run function anim_edit:gui/add/run/hover/select/4
execute if entity @s[tag=anim_menu10] run function anim_edit:gui/add/run/hover/select/5
execute if entity @s[tag=anim_menu11] run function anim_edit:gui/add/run/hover/select/6
execute if entity @s[tag=anim_menu13] run data merge entity @s {CustomName:'{"text":"[Cancel]","color":"white"}'}
execute if score $_done _anim matches 1 if entity @s[tag=anim_menu14] run data merge entity @s {CustomName:'{"text":"[Finish]","color":"white"}'}