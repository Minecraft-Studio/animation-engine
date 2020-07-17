execute positioned ^2.0 ^ ^ run tp @e[type=armor_stand,tag=anim_menu2] ~ ~2.4 ~
tp @e[type=armor_stand,tag=anim_menu0] ~ ~2.4 ~
tp @e[type=armor_stand,tag=anim_menu1] ~ ~2.1 ~
tp @e[type=armor_stand,tag=anim_menu3] ~ ~1.8 ~
tp @e[type=armor_stand,tag=anim_menu4] ~ ~1.5 ~
tp @e[type=armor_stand,tag=anim_menu5] ~ ~1.2 ~
tp @e[type=armor_stand,tag=anim_menu8] ~ ~0.9 ~
tp @e[type=armor_stand,tag=anim_menu9] ~ ~0.6 ~
tp @e[type=armor_stand,tag=anim_menu10] ~ ~0.3 ~
tp @e[type=armor_stand,tag=anim_menu11] ~ ~ ~
tp @e[type=armor_stand,tag=anim_menu12] ~ ~-0.3 ~
execute positioned ^1.2 ^ ^ run tp @e[type=armor_stand,tag=anim_menu6] ~ ~-0.6 ~
execute positioned ^-1.2 ^ ^ run tp @e[type=armor_stand,tag=anim_menu7] ~ ~-0.6 ~
tp @e[type=armor_stand,tag=anim_menu13] ~ ~-0.6 ~

#tick
execute if score $name_menu _anim = $show_menu _anim if score $name_id _anim matches 1 if data storage anim:editor name run function anim_edit:gui/new/run/save_name
execute unless entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu_list,tag=anim_sel_menu] run function anim_edit:gui/new/run/refresh_list
#execute as @e[type=armor_stand,tag=anim_add,tag=!anim_part,tag=!anim_menu] at @s run function anim_edit:gui/new/run/add_armor_stand