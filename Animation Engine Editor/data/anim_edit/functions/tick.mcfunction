# execute as @a[scores={_anim_menu=1..}] at @s run function anim_edit:select
# execute as @a[scores={_anim_menu=1..}] at @s as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/tp
execute as @a[scores={_anim_menu=4}] at @s run function anim_edit:gui/main/run/menu4/tick
execute as @a[scores={_anim_menu=5}] at @s run function anim_edit:gui/main/run/menu5/tick
execute as @a[scores={_anim_menu=6}] at @s run function anim_edit:gui/main/run/menu6/tick
# execute as @a[scores={_anim_menu=7}] at @s as @e[type=armor_stand,tag=anim_menu,tag=anim_menu_main] at @s run function anim_edit:gui/editor/tp
execute as @a[scores={_anim_menu=7}] at @s if score $editor_play _anim matches 1 run function anim_edit:gui/editor/run/play_check
execute as @a[scores={_anim_menu=7}] at @s if score $editor_play _anim matches 1.. run function anim_edit:gui/editor/run/preview_play
execute as @a at @s run function anim_edit:tp_nbt_as