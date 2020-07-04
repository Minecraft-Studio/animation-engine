execute if data storage anim:editor key_custom.rotate.r_leg.y run data modify storage anim:editor current_keyframe.rotate.r_leg.y set from storage anim:editor key_custom.rotate.r_leg.y
execute if data storage anim:editor key_custom.rotate.r_leg.y run function anim_edit:gui/editor/run/text/tab/rotate
execute unless data storage anim:editor key_custom.rotate.r_leg.y run schedule function anim_edit:gui/editor/run/text/rotate/r_leg/custom_y_checker 1t
execute if data storage anim:editor key_custom.rotate.r_leg.y run data remove storage anim:editor key_custom.rotate.r_leg.y