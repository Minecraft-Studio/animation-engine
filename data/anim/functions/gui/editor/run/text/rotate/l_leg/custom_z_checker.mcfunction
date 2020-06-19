execute if data storage anim:editor key_custom.rotate.l_leg.z run data modify storage anim:editor current_keyframe.rotate.l_leg.z set from storage anim:editor key_custom.rotate.l_leg.z
execute if data storage anim:editor key_custom.rotate.l_leg.z run function anim:gui/editor/run/text/tab/rotate
execute unless data storage anim:editor key_custom.rotate.l_leg.z run schedule function anim:gui/editor/run/text/rotate/l_leg/custom_z_checker 1t
execute if data storage anim:editor key_custom.rotate.l_leg.z run data remove storage anim:editor key_custom.rotate.l_leg.z