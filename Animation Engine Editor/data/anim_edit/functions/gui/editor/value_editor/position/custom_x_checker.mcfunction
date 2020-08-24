execute if data storage anim:editor key_custom.position.x run data modify storage anim:editor current_keyframe.position.x set from storage anim:editor key_custom.position.x
execute if data storage anim:editor key_custom.position.x run function anim_edit:gui/editor/load
execute unless data storage anim:editor key_custom.position.x run schedule function anim_edit:gui/editor/value_editor/position/custom_x_checker 1t
execute if data storage anim:editor key_custom.position.x run data remove storage anim:editor key_custom.position.x