function anim_edit:get_edit_shortcuts
execute store result score $_sum_set _anim as @e[tag=anim_custom] run data get entity @s ArmorItems[2].tag.custom_value.x 1000
function anim_edit:gui/editor/value_editor/edit_shortcut_use/x/apply