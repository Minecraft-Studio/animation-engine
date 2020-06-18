execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu82] run function anim:gui/editor/run/add_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu81] run function anim:gui/editor/run/remove_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu85] run function anim:gui/editor/run/reset_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu83] run function anim:gui/editor/run/skip_remove_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu84] run function anim:gui/editor/run/skip_add_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu88] run function anim:gui/editor/run/skip_add_page2
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu89] run function anim:gui/editor/run/search/delete_keyframe/start

execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu_1] run function anim:gui/settings/load
#execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu7] as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim:gui/new/load

execute as @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu92] run function anim:gui/editor/run/text/tab/rotate

execute as @e[type=armor_stand,tag=anim_sel_menu,tag=anim_editor_r1] run function anim:gui/editor/run/select/sel1

execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu93] run function anim:gui/editor/run/copy_keyframe
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu94] run function anim:gui/editor/run/paste_keyframe

