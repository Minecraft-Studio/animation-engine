scoreboard players set $show_menu _anim 3
kill @e[type=armor_stand,tag=anim_menu]
kill @e[type=slime,tag=anim_selector]
tag @s add anim_user
function anim_edit:gui/main/load