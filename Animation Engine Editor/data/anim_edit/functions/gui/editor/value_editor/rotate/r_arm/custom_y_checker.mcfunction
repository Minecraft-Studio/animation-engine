execute if data storage anim:editor key_custom.rotate.r_arm.y run data modify storage anim:editor current_keyframe.rotate.r_arm.y set from storage anim:editor key_custom.rotate.r_arm.y
execute if data storage anim:editor key_custom.rotate.r_arm.y run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.rotate.r_arm.y run schedule function anim_edit:gui/editor/value_editor/rotate/r_arm/custom_y_checker 1t
execute if data storage anim:editor key_custom.rotate.r_arm.y run data remove storage anim:editor key_custom.rotate.r_arm.y