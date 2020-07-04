execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu1] run function anim_edit:gui/settings/load
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu2] as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/new/load
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu4] as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/close
