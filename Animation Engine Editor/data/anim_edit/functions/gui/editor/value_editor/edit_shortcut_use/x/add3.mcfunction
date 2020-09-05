function anim_edit:get_edit_shortcuts
execute store result score $_sum_add _anim run data get storage anim:editor value_edit_shortcuts.add3[0]
function anim_edit:gui/editor/value_editor/edit_shortcut_use/x/apply