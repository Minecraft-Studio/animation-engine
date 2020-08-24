execute if data storage anim:editor key_custom.rotate.body.x run data modify storage anim:editor current_keyframe.rotate.body.x set from storage anim:editor key_custom.rotate.body.x
execute if data storage anim:editor key_custom.rotate.body.x run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.rotate.body.x run schedule function anim_edit:gui/editor/value_editor/rotate/body/custom_x_checker 1t
execute if data storage anim:editor key_custom.rotate.body.x run data remove storage anim:editor key_custom.rotate.body.x