scoreboard players set $menu_look _anim 0
execute as @p[tag=anim_user] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=anim_menu,distance=..1.5] run scoreboard players set $menu_look _anim 1
execute as @p[tag=anim_user] at @s positioned ^ ^ ^2 if entity @e[type=armor_stand,tag=anim_menu,distance=..1.5] run scoreboard players set $menu_look _anim 1
execute as @p[tag=anim_user] at @s positioned ^ ^ ^3 if entity @e[type=armor_stand,tag=anim_menu,distance=..1.5] run scoreboard players set $menu_look _anim 1
execute as @p[tag=anim_user] at @s positioned ^ ^ ^4 if entity @e[type=armor_stand,tag=anim_menu,distance=..1.5] run scoreboard players set $menu_look _anim 1
execute as @p[tag=anim_user] at @s positioned ^ ^ ^5 if entity @e[type=armor_stand,tag=anim_menu,distance=..1.5] run scoreboard players set $menu_look _anim 1
execute if score $menu_look _anim matches 0 as @e[type=armor_stand,tag=anim_menu_main] at @s run tp @e[type=slime,tag=anim_selector] ~ ~ ~
execute unless score $sett_link _anim matches 0 as @p[tag=anim_user] at @s if score $menu_look _anim matches 1 anchored eyes positioned ^ ^ ^2 run tp @e[type=slime,tag=anim_selector] ~ ~-0.25 ~
execute if score $sett_link _anim matches 0 as @e[type=armor_stand,tag=anim_menu_main] at @s unless entity @p[tag=anim_user,distance=..5] run tp @e[type=slime,tag=anim_selector] ~ ~ ~
execute if score $sett_link _anim matches 0 as @e[type=armor_stand,tag=anim_menu_main] at @s if entity @p[tag=anim_user,distance=..5] as @p[tag=anim_user] at @s anchored eyes positioned ^ ^ ^2 run tp @e[type=slime,tag=anim_selector] ~ ~-0.25 ~
execute if score $show_menu _anim matches 1 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/main/reset
execute if score $show_menu _anim matches 2 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/settings/reset
execute if score $show_menu _anim matches 3 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/new/reset
execute if score $show_menu _anim matches 4 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/add/reset
execute if score $show_menu _anim matches 5 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/anim_picker/reset
execute if score $show_menu _anim matches 6 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/editor/reset
tag @e[type=armor_stand,tag=anim_sel_menu] remove anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^5.5 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^5 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^4.5 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^4 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^3.5 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^3 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^2.5 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^2 run tag @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_unsel,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
#execute as @a at @s anchored eyes unless entity @e[type=armor_stand,tag=anim_sel_menu] positioned ^ ^-0.45 ^1 run tag @e[type=armor_stand,tag=anim_menu,distance=..0.3,limit=1,sort=nearest] add anim_sel_menu
execute if score $show_menu _anim matches 1 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/main/select
execute if score $show_menu _anim matches 2 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/settings/select
execute if score $show_menu _anim matches 3 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/new/select
execute if score $show_menu _anim matches 4 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/add/select
execute if score $show_menu _anim matches 5 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/anim_picker/select
execute if score $show_menu _anim matches 6 as @e[type=armor_stand,tag=anim_sel_menu] run function anim:gui/editor/select
execute if entity @e[type=slime,tag=anim_selector] unless entity @e[type=slime,tag=anim_selector,nbt={Health:50.0f}] run function anim:gui/click