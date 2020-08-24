execute if data storage anim:editor key_custom.rotate.head.x run data modify storage anim:editor current_keyframe.rotate.head.x set from storage anim:editor key_custom.rotate.head.x
execute if data storage anim:editor key_custom.rotate.head.x run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.rotate.head.x run schedule function anim_edit:gui/editor/value_editor/rotate/head/custom_x_checker 1t
execute if data storage anim:editor key_custom.rotate.head.x run data remove storage anim:editor key_custom.rotate.head.x