function anim_edit:get_edit_shortcuts
execute store result score $_sum_add _anim run data get storage anim:editor value_edit_shortcuts.remove2[0]
scoreboard players operation $_sum_add _anim *= $-1 _anim
function anim_edit:gui/editor/value_editor/edit_shortcut_use/y/apply