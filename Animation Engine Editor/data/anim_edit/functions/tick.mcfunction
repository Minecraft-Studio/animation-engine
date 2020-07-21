execute if score $show_menu _anim matches 1.. run function anim_edit:select
execute if score $show_menu _anim matches 1.. as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/tp
execute if score $show_menu _anim matches 4 run function anim_edit:gui/main/run/menu4/tick
execute if score $show_menu _anim matches 5 run function anim_edit:gui/main/run/menu5/tick
execute if score $show_menu _anim matches 6 run function anim_edit:gui/main/run/menu6/tick
execute if score $show_menu _anim matches 7 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/editor/tp
execute if score $show_menu _anim matches 7 if score $editor_play _anim matches 1 run function anim_edit:gui/editor/run/play_check
execute if score $show_menu _anim matches 7 if score $editor_play _anim matches 1.. run function anim_edit:gui/editor/run/preview_play