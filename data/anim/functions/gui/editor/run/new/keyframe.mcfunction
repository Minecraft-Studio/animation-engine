data modify storage anim:editor keyframes insert 0 value {new:1b}

scoreboard players operation $_tick_save _anim = $_sel_col _anim
execute store result storage anim:editor keyframes[{new:1b}].tick int 1 run scoreboard players operation $_tick_save _anim += $_page _anim
execute store result storage anim:editor keyframes[{new:1b}].part int 1 run scoreboard players get $_sel_row _anim
execute if data storage anim:editor current_keyframe.rotate.head.x run data modify storage anim:editor keyframes[{new:1b}].rotate.head.x set from storage anim:editor current_keyframe.rotate.head.x
execute if data storage anim:editor current_keyframe.rotate.head.y run data modify storage anim:editor keyframes[{new:1b}].rotate.head.y set from storage anim:editor current_keyframe.rotate.head.y
execute if data storage anim:editor current_keyframe.rotate.head.z run data modify storage anim:editor keyframes[{new:1b}].rotate.head.z set from storage anim:editor current_keyframe.rotate.head.z

scoreboard players reset $_tick_save _anim
data remove storage anim:editor keyframes[{new:1b}].new
