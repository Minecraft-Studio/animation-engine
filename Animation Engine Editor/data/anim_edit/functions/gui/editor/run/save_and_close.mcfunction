#>Save
scoreboard players set $_no_deselect _anim 1
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe
#>Close
kill @e[tag=anim_menu]
execute at @p[tag=anim_user] run tp @e[tag=anim_selector] ~ 0 ~
kill @e[tag=anim_selector]
scoreboard players set $show_menu _anim 5
function anim_edit:gui/main/load