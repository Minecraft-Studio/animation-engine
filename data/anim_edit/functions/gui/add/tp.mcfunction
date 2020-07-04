tp @e[type=armor_stand,tag=anim_menu0] ~ ~2.7 ~
tp @e[type=armor_stand,tag=anim_menu1] ~ ~2.7 ~
tp @e[type=armor_stand,tag=anim_menu2] ~ ~2.4 ~
tp @e[type=armor_stand,tag=anim_menu3] ~ ~2.1 ~
tp @e[type=armor_stand,tag=anim_menu4] ~ ~1.8 ~
tp @e[type=armor_stand,tag=anim_menu5] ~ ~1.5 ~
tp @e[type=armor_stand,tag=anim_menu6] ~ ~1.2 ~
tp @e[type=armor_stand,tag=anim_menu7] ~ ~0.9 ~
tp @e[type=armor_stand,tag=anim_menu8] ~ ~0.6 ~
tp @e[type=armor_stand,tag=anim_menu9] ~ ~0.3 ~
tp @e[type=armor_stand,tag=anim_menu10] ~ ~ ~
tp @e[type=armor_stand,tag=anim_menu11] ~ ~-0.3 ~
tp @e[type=armor_stand,tag=anim_menu12] ~ ~-0.6 ~
execute facing entity @p[tag=anim_user] eyes positioned ^-1.2 ^ ^ run tp @e[type=armor_stand,tag=anim_menu13] ~ ~-0.9 ~
execute facing entity @p[tag=anim_user] eyes positioned ^1.2 ^ ^ run tp @e[type=armor_stand,tag=anim_menu14] ~ ~-0.9 ~

#tick
execute if score $name_menu _anim = $show_menu _anim if score $name_id _anim matches 1 if data storage anim:editor name run function anim_edit:gui/add/run/save_name
execute as @e[type=armor_stand,tag=anim_add,tag=!anim_part,tag=!anim_edit,tag=!anim_main,limit=1] at @s run function anim_edit:gui/add/run/insert_armor_stand

