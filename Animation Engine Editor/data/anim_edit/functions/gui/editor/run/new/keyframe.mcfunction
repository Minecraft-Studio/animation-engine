data modify storage anim:editor keyframes insert 0 value {new:1b}

scoreboard players operation $_tick_save _anim = $_sel_col _anim
execute store result storage anim:editor keyframes[{new:1b}].tick int 1 run scoreboard players operation $_tick_save _anim += $_page _anim
execute store result storage anim:editor keyframes[{new:1b}].part int 1 run scoreboard players get $_sel_row _anim
execute if data storage anim:editor current_keyframe.rotate.head.x run data modify storage anim:editor keyframes[{new:1b}].rotate.head.x set from storage anim:editor current_keyframe.rotate.head.x
execute if data storage anim:editor current_keyframe.rotate.head.y run data modify storage anim:editor keyframes[{new:1b}].rotate.head.y set from storage anim:editor current_keyframe.rotate.head.y
execute if data storage anim:editor current_keyframe.rotate.head.z run data modify storage anim:editor keyframes[{new:1b}].rotate.head.z set from storage anim:editor current_keyframe.rotate.head.z
execute if data storage anim:editor current_keyframe.rotate.body.x run data modify storage anim:editor keyframes[{new:1b}].rotate.body.x set from storage anim:editor current_keyframe.rotate.body.x
execute if data storage anim:editor current_keyframe.rotate.body.y run data modify storage anim:editor keyframes[{new:1b}].rotate.body.y set from storage anim:editor current_keyframe.rotate.body.y
execute if data storage anim:editor current_keyframe.rotate.body.z run data modify storage anim:editor keyframes[{new:1b}].rotate.body.z set from storage anim:editor current_keyframe.rotate.body.z
execute if data storage anim:editor current_keyframe.rotate.r_arm.x run data modify storage anim:editor keyframes[{new:1b}].rotate.r_arm.x set from storage anim:editor current_keyframe.rotate.r_arm.x
execute if data storage anim:editor current_keyframe.rotate.r_arm.y run data modify storage anim:editor keyframes[{new:1b}].rotate.r_arm.y set from storage anim:editor current_keyframe.rotate.r_arm.y
execute if data storage anim:editor current_keyframe.rotate.r_arm.z run data modify storage anim:editor keyframes[{new:1b}].rotate.r_arm.z set from storage anim:editor current_keyframe.rotate.r_arm.z
execute if data storage anim:editor current_keyframe.rotate.l_arm.x run data modify storage anim:editor keyframes[{new:1b}].rotate.l_arm.x set from storage anim:editor current_keyframe.rotate.l_arm.x
execute if data storage anim:editor current_keyframe.rotate.l_arm.y run data modify storage anim:editor keyframes[{new:1b}].rotate.l_arm.y set from storage anim:editor current_keyframe.rotate.l_arm.y
execute if data storage anim:editor current_keyframe.rotate.l_arm.z run data modify storage anim:editor keyframes[{new:1b}].rotate.l_arm.z set from storage anim:editor current_keyframe.rotate.l_arm.z
execute if data storage anim:editor current_keyframe.rotate.r_leg.x run data modify storage anim:editor keyframes[{new:1b}].rotate.r_leg.x set from storage anim:editor current_keyframe.rotate.r_leg.x
execute if data storage anim:editor current_keyframe.rotate.r_leg.y run data modify storage anim:editor keyframes[{new:1b}].rotate.r_leg.y set from storage anim:editor current_keyframe.rotate.r_leg.y
execute if data storage anim:editor current_keyframe.rotate.r_leg.z run data modify storage anim:editor keyframes[{new:1b}].rotate.r_leg.z set from storage anim:editor current_keyframe.rotate.r_leg.z
execute if data storage anim:editor current_keyframe.rotate.l_leg.x run data modify storage anim:editor keyframes[{new:1b}].rotate.l_leg.x set from storage anim:editor current_keyframe.rotate.l_leg.x
execute if data storage anim:editor current_keyframe.rotate.l_leg.y run data modify storage anim:editor keyframes[{new:1b}].rotate.l_leg.y set from storage anim:editor current_keyframe.rotate.l_leg.y
execute if data storage anim:editor current_keyframe.rotate.l_leg.z run data modify storage anim:editor keyframes[{new:1b}].rotate.l_leg.z set from storage anim:editor current_keyframe.rotate.l_leg.z
execute if data storage anim:editor current_keyframe.position.x run data modify storage anim:editor keyframes[{new:1b}].position.x set from storage anim:editor current_keyframe.position.x
execute if data storage anim:editor current_keyframe.position.y run data modify storage anim:editor keyframes[{new:1b}].position.y set from storage anim:editor current_keyframe.position.y
execute if data storage anim:editor current_keyframe.position.z run data modify storage anim:editor keyframes[{new:1b}].position.z set from storage anim:editor current_keyframe.position.z
execute if data storage anim:editor current_keyframe.extra.rotate run data modify storage anim:editor keyframes[{new:1b}].extra.rotate set from storage anim:editor current_keyframe.extra.rotate
execute if data storage anim:editor current_keyframe.extra.move run data modify storage anim:editor keyframes[{new:1b}].extra.move set from storage anim:editor current_keyframe.extra.move
execute if data storage anim:editor current_keyframe.extra.head run data modify storage anim:editor keyframes[{new:1b}].extra.head set from storage anim:editor current_keyframe.extra.head
execute if data storage anim:editor current_keyframe.extra.body run data modify storage anim:editor keyframes[{new:1b}].extra.body set from storage anim:editor current_keyframe.extra.body
execute if data storage anim:editor current_keyframe.extra.r_arm run data modify storage anim:editor keyframes[{new:1b}].extra.r_arm set from storage anim:editor current_keyframe.extra.r_arm
execute if data storage anim:editor current_keyframe.extra.l_arm run data modify storage anim:editor keyframes[{new:1b}].extra.l_arm set from storage anim:editor current_keyframe.extra.l_arm
execute if data storage anim:editor current_keyframe.extra.legg run data modify storage anim:editor keyframes[{new:1b}].extra.legg set from storage anim:editor current_keyframe.extra.legg
execute if data storage anim:editor current_keyframe.extra.boots run data modify storage anim:editor keyframes[{new:1b}].extra.boots set from storage anim:editor current_keyframe.extra.boots
execute if data storage anim:editor current_keyframe.extra.invisible run data modify storage anim:editor keyframes[{new:1b}].extra.invisible set from storage anim:editor current_keyframe.extra.invisible
execute if data storage anim:editor current_keyframe.extra.marker run data modify storage anim:editor keyframes[{new:1b}].extra.marker set from storage anim:editor current_keyframe.extra.marker
execute if data storage anim:editor current_keyframe.extra.small run data modify storage anim:editor keyframes[{new:1b}].extra.small set from storage anim:editor current_keyframe.extra.small
execute if data storage anim:editor current_keyframe.extra.arms run data modify storage anim:editor keyframes[{new:1b}].extra.arms set from storage anim:editor current_keyframe.extra.arms
#FIX
scoreboard players reset $_tick_save _anim
data remove storage anim:editor keyframes[{new:1b}].new











