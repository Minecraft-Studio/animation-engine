
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu2] run function anim:gui/settings/load
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu7] as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim:gui/new/load
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu13] run function anim:gui/anim_picker/run/change_list
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu6] run function anim:gui/anim_picker/run/next
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu4] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 1
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu5] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 2
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu8] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 3
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu9] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 4
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu10] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 5
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu11] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 6
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu12] if score $page _anim matches 1 run scoreboard players set $_sel_anim _anim 7
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu4] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 8
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu5] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 9
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu8] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 10
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu9] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 11
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu10] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 12
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu11] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 13
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu12] if score $page _anim matches 2 run scoreboard players set $_sel_anim _anim 14
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu4] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu5] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu8] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu9] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu10] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu11] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu12] run function anim:gui/anim_picker/run/select_anim
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu14] unless score $name_id _anim matches 1 run function anim:gui/anim_picker/run/edit_name
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu15] unless score $name_id _anim matches 1 run function anim:gui/anim_picker/run/confirm_delete
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu6] unless score $name_id _anim matches 1 run function anim:gui/editor/load
