#>Loads Editor
kill @e[type=armor_stand,tag=anim_menu]
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:0b,Tags:["anim_menu","anim_menu_unsel","anim_menu_main"]}
function anim_edit:slime
function anim_edit:gui/editor/load