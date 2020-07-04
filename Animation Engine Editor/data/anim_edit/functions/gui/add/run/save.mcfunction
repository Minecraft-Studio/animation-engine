scoreboard players operation @e[type=armor_stand,tag=anim_part,tag=anim_edit] _anim_idb = $_edit_armor_stand _anim
scoreboard players operation @e[type=armor_stand,tag=anim_part,tag=anim_edit] _anim_ida = @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] _anim_ida
tp @e[type=armor_stand,tag=anim_part,tag=anim_edit,tag=anim_edit_new] @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1]
tag @e[type=armor_stand,tag=anim_part,tag=anim_edit] remove anim_edit_new
tag @e[type=armor_stand,tag=anim_part,tag=anim_edit] remove anim_edit
execute as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/new/reload
scoreboard players reset $_exists _anim
scoreboard players reset $_edit_armor_stand _anim