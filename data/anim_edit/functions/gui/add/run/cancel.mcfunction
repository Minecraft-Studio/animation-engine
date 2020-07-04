kill @e[type=armor_stand,tag=anim_edit_new,tag=anim_part,tag=anim_edit]
tag @e[type=armor_stand,tag=anim_edit,tag=anim_part] remove anim_edit
scoreboard players operation $_done _anim = $_is_done _anim
execute as @e[type=armor_stand,tag=anim_menu_main] at @p[tag=anim_user] run function anim_edit:gui/new/reload