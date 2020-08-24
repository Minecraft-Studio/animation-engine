execute if data storage anim:editor key_custom.position.z run data modify storage anim:editor current_keyframe.position.z set from storage anim:editor key_custom.position.z
execute if data storage anim:editor key_custom.position.z run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.position.z run schedule function anim_edit:gui/editor/value_editor/position/custom_z_checker 1t
execute if data storage anim:editor key_custom.position.z run data remove storage anim:editor key_custom.position.z