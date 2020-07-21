execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu82] run function anim_edit:gui/editor/run/add_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu81] run function anim_edit:gui/editor/run/remove_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu85] run function anim_edit:gui/editor/run/reset_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu83] run function anim_edit:gui/editor/run/skip_remove_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu84] run function anim_edit:gui/editor/run/skip_add_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu88] run function anim_edit:gui/editor/run/skip_add_page2

execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu87] run function anim_edit:gui/editor/run/add_anim_page
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu93] run function anim_edit:gui/editor/run/remove_anim_page

execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu_1] run function anim_edit:gui/settings/load
#execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu7] as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/new/load

execute as @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu92] run function anim_edit:gui/editor/run/text/tab/rotate

execute as @e[type=armor_stand,tag=anim_sel_menu,tag=anim_editor] run function anim_edit:gui/editor/run/select/sel1

execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu91] run function anim_edit:gui/editor/run/search/compile/start

execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu90] run function anim_edit:gui/editor/run/save_and_close

execute unless score $editor_play _anim matches 1.. if entity @e[tag=anim_sel_menu,tag=anim_menu80] run function anim_edit:gui/editor/run/play
execute unless score $editor_play _anim matches 1.. if entity @e[tag=anim_sel_menu,tag=anim_menu94] run function anim_edit:gui/editor/run/play_from_sel
execute if score $editor_play _anim matches 1.. if entity @e[tag=anim_sel_menu,tag=anim_menu80] run function anim_edit:gui/editor/run/pause_play
execute if score $editor_play _anim matches 1.. if entity @e[tag=anim_sel_menu,tag=anim_menu94] run function anim_edit:gui/editor/run/stop_play
