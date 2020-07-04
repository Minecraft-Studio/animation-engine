execute if data storage anim:editor key_custom.rotate.l_arm.x run data modify storage anim:editor current_keyframe.rotate.l_arm.x set from storage anim:editor key_custom.rotate.l_arm.x
execute if data storage anim:editor key_custom.rotate.l_arm.x run function anim_edit:gui/editor/run/text/tab/rotate
execute unless data storage anim:editor key_custom.rotate.l_arm.x run schedule function anim_edit:gui/editor/run/text/rotate/l_arm/custom_x_checker 1t
execute if data storage anim:editor key_custom.rotate.l_arm.x run data remove storage anim:editor key_custom.rotate.l_arm.x