execute if entity @s[tag=anim_menu2] run data merge entity @s {CustomName:'{"text":"[Settings]","color":"white"}'}
execute if entity @s[tag=anim_menu6] if score $_sel_anim _anim matches 1.. unless score $name_id _anim matches 1 run data merge entity @s {CustomName:'{"text":"[Open]","color":"white"}'}
execute if entity @s[tag=anim_menu14] if score $_sel_anim _anim matches 1.. unless score $name_id _anim matches 1 run data merge entity @s {CustomName:'{"text":"[Edit]","color":"white"}'}
execute if entity @s[tag=anim_menu15] if score $_sel_anim _anim matches 1.. unless score $name_id _anim matches 1 run data merge entity @s {CustomName:'{"text":"[Delete]","color":"white"}'}
execute if entity @s[tag=anim_menu7] run data merge entity @s {CustomName:'{"text":"[Back]","color":"white"}'}
execute if entity @s[tag=anim_menu13] if score $page _anim matches 1 run data merge entity @s {CustomName:'{"text":"[>]","color":"white"}'}
execute if entity @s[tag=anim_menu13] if score $page _anim matches 2 run data merge entity @s {CustomName:'{"text":"[<]","color":"white"}'}

execute if entity @s[tag=anim_menu4] run function anim_edit:gui/anim_picker/run/refresh_list
execute if entity @s[tag=anim_menu5] run function anim_edit:gui/anim_picker/run/refresh_list
execute if entity @s[tag=anim_menu8] run function anim_edit:gui/anim_picker/run/refresh_list
execute if entity @s[tag=anim_menu9] run function anim_edit:gui/anim_picker/run/refresh_list
execute if entity @s[tag=anim_menu10] run function anim_edit:gui/anim_picker/run/refresh_list
execute if entity @s[tag=anim_menu11] run function anim_edit:gui/anim_picker/run/refresh_list
execute if entity @s[tag=anim_menu12] run function anim_edit:gui/anim_picker/run/refresh_list