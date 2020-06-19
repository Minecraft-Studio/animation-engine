execute if data storage anim:editor key_custom.rotate.head.y run data modify storage anim:editor current_keyframe.rotate.head.y set from storage anim:editor key_custom.rotate.head.y
execute if data storage anim:editor key_custom.rotate.head.y run function anim:gui/editor/run/text/tab/rotate
execute unless data storage anim:editor key_custom.rotate.head.y run schedule function anim:gui/editor/run/text/rotate/head/custom_y_checker 1t
execute if data storage anim:editor key_custom.rotate.head.y run data remove storage anim:editor key_custom.rotate.head.y