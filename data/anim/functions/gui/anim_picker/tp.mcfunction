execute facing entity @p[tag=anim_user] eyes positioned ^2.0 ^ ^ run tp @e[type=armor_stand,tag=anim_menu2] ~ ~2.4 ~
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
execute facing entity @p[tag=anim_user] eyes positioned ^-1.2 ^ ^ run tp @e[type=armor_stand,tag=anim_menu7] ~ ~-0.6 ~
execute facing entity @p[tag=anim_user] eyes positioned ^-0.55 ^ ^ run tp @e[type=armor_stand,tag=anim_menu13] ~ ~-0.6 ~
execute facing entity @p[tag=anim_user] eyes positioned ^1.9 ^ ^ run tp @e[type=armor_stand,tag=anim_menu6] ~ ~-0.6 ~
execute facing entity @p[tag=anim_user] eyes positioned ^1.1 ^ ^ run tp @e[type=armor_stand,tag=anim_menu14] ~ ~-0.6 ~
execute facing entity @p[tag=anim_user] eyes positioned ^0.2 ^ ^ run tp @e[type=armor_stand,tag=anim_menu15] ~ ~-0.6 ~

#tick
execute if score $name_menu _anim = $show_menu _anim if score $name_id _anim matches 1..2 if data storage anim:editor name run function anim:gui/anim_picker/run/save_name
execute unless entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu_list,tag=anim_sel_menu] run function anim:gui/anim_picker/run/refresh_list
#execute as @e[type=armor_stand,tag=anim_add,tag=!anim_part,tag=!anim_menu] at @s run function anim:gui/new/run/add_armor_stand