execute if data storage anim:editor key_custom.rotate.head.z run data modify storage anim:editor current_keyframe.rotate.head.z set from storage anim:editor key_custom.rotate.head.z
execute if data storage anim:editor key_custom.rotate.head.z run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.rotate.head.z run schedule function anim_edit:gui/editor/value_editor/rotate/head/custom_z_checker 1t
execute if data storage anim:editor key_custom.rotate.head.z run data remove storage anim:editor key_custom.rotate.head.z