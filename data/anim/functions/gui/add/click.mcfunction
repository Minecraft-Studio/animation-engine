execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu6] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[3] set from entity @p[tag=anim_user] SelectedItem
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu7] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[2] set from entity @p[tag=anim_user] SelectedItem
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu8] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] HandItems[0] set from entity @p[tag=anim_user] SelectedItem
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu9] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] HandItems[1] set from entity @p[tag=anim_user] SelectedItem
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu10] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[1] set from entity @p[tag=anim_user] SelectedItem
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu11] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[0] set from entity @p[tag=anim_user] SelectedItem
execute unless data entity @p[tag=anim_user] SelectedItem if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu6] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[3] set value {}
execute unless data entity @p[tag=anim_user] SelectedItem if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu7] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[2] set value {}
execute unless data entity @p[tag=anim_user] SelectedItem if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu8] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] HandItems[0] set value {}
execute unless data entity @p[tag=anim_user] SelectedItem if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu9] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] HandItems[1] set value {}
execute unless data entity @p[tag=anim_user] SelectedItem if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu10] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[1] set value {}
execute unless data entity @p[tag=anim_user] SelectedItem if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu11] run data modify entity @e[type=armor_stand,tag=anim_part,tag=anim_edit,limit=1] ArmorItems[0] set value {}
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu14] if score $_done _anim matches 1 run function anim:gui/add/run/save
execute if entity @e[type=armor_stand,tag=anim_sel_menu,tag=anim_menu13] run function anim:gui/add/run/cancel

