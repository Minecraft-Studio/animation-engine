execute if data storage anim:editor key_custom.rotate.body.z run data modify storage anim:editor current_keyframe.rotate.body.z set from storage anim:editor key_custom.rotate.body.z
execute if data storage anim:editor key_custom.rotate.body.z run function anim:gui/editor/run/text/tab/rotate
execute unless data storage anim:editor key_custom.rotate.body.z run schedule function anim:gui/editor/run/text/rotate/body/custom_z_checker 1t
execute if data storage anim:editor key_custom.rotate.body.z run data remove storage anim:editor key_custom.rotate.body.z