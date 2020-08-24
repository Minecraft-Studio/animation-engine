execute if data storage anim:editor key_custom.rotate.r_leg.z run data modify storage anim:editor current_keyframe.rotate.r_leg.z set from storage anim:editor key_custom.rotate.r_leg.z
execute if data storage anim:editor key_custom.rotate.r_leg.z run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.rotate.r_leg.z run schedule function anim_edit:gui/editor/value_editor/rotate/r_leg/custom_z_checker 1t
execute if data storage anim:editor key_custom.rotate.r_leg.z run data remove storage anim:editor key_custom.rotate.r_leg.z