execute if score $show_menu _anim matches 1.. run function anim_edit:select
execute if score $show_menu _anim matches 1.. as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/tp
execute if score $show_menu _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/main/tp
execute if score $show_menu _anim matches 2 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/settings/tp
execute if score $show_menu _anim matches 3 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/new/tp
execute if score $show_menu _anim matches 4 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/add/tp
execute if score $show_menu _anim matches 5 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/anim_picker/tp
execute if score $show_menu _anim matches 6 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/editor/tp