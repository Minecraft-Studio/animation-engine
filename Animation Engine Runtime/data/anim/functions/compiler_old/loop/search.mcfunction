execute unless score $_search_tick _anim matches 1.. run scoreboard players operation $_search_tick _anim = $_get_tick _anim
# get keyframe with tick
data modify storage anim:runtime search_keyframes set from storage anim:runtime keyframes
data remove storage anim:runtime got_keyframe
function anim:compiler/get_keyframe

#>If found
execute if data storage anim:runtime search_data[{id:"head.x"}] if data storage anim:runtime got_keyframe.value.head.x run function anim:compiler/new_key/head/x
execute if data storage anim:runtime search_data[{id:"head.y"}] if data storage anim:runtime got_keyframe.value.head.y run function anim:compiler/new_key/head/y
execute if data storage anim:runtime search_data[{id:"head.z"}] if data storage anim:runtime got_keyframe.value.head.z run function anim:compiler/new_key/head/z
execute if data storage anim:runtime search_data[{id:"body.x"}] if data storage anim:runtime got_keyframe.value.body.x run function anim:compiler/new_key/body/x
execute if data storage anim:runtime search_data[{id:"body.y"}] if data storage anim:runtime got_keyframe.value.body.y run function anim:compiler/new_key/body/y
execute if data storage anim:runtime search_data[{id:"body.z"}] if data storage anim:runtime got_keyframe.value.body.z run function anim:compiler/new_key/body/z
execute if data storage anim:runtime search_data[{id:"r_arm.x"}] if data storage anim:runtime got_keyframe.value.r_arm.x run function anim:compiler/new_key/r_arm/x
execute if data storage anim:runtime search_data[{id:"r_arm.y"}] if data storage anim:runtime got_keyframe.value.r_arm.y run function anim:compiler/new_key/r_arm/y
execute if data storage anim:runtime search_data[{id:"r_arm.z"}] if data storage anim:runtime got_keyframe.value.r_arm.z run function anim:compiler/new_key/r_arm/z
execute if data storage anim:runtime search_data[{id:"l_arm.x"}] if data storage anim:runtime got_keyframe.value.l_arm.x run function anim:compiler/new_key/l_arm/x
execute if data storage anim:runtime search_data[{id:"l_arm.y"}] if data storage anim:runtime got_keyframe.value.l_arm.y run function anim:compiler/new_key/l_arm/y
execute if data storage anim:runtime search_data[{id:"l_arm.z"}] if data storage anim:runtime got_keyframe.value.l_arm.z run function anim:compiler/new_key/l_arm/z
execute if data storage anim:runtime search_data[{id:"r_leg.x"}] if data storage anim:runtime got_keyframe.value.r_leg.x run function anim:compiler/new_key/r_leg/x
execute if data storage anim:runtime search_data[{id:"r_leg.y"}] if data storage anim:runtime got_keyframe.value.r_leg.y run function anim:compiler/new_key/r_leg/y
execute if data storage anim:runtime search_data[{id:"r_leg.z"}] if data storage anim:runtime got_keyframe.value.r_leg.z run function anim:compiler/new_key/r_leg/z
execute if data storage anim:runtime search_data[{id:"l_leg.x"}] if data storage anim:runtime got_keyframe.value.l_leg.x run function anim:compiler/new_key/l_leg/x
execute if data storage anim:runtime search_data[{id:"l_leg.y"}] if data storage anim:runtime got_keyframe.value.l_leg.y run function anim:compiler/new_key/l_leg/y
execute if data storage anim:runtime search_data[{id:"l_leg.z"}] if data storage anim:runtime got_keyframe.value.l_leg.z run function anim:compiler/new_key/l_leg/z
execute if data storage anim:runtime search_data[{id:"pos.x"}] if data storage anim:runtime got_keyframe.value.pos.x run function anim:compiler/new_key/pos/x
execute if data storage anim:runtime search_data[{id:"pos.y"}] if data storage anim:runtime got_keyframe.value.pos.y run function anim:compiler/new_key/pos/y
execute if data storage anim:runtime search_data[{id:"pos.z"}] if data storage anim:runtime got_keyframe.value.pos.z run function anim:compiler/new_key/pos/z
execute if data storage anim:runtime search_data[{id:"rotation.x"}] if data storage anim:runtime got_keyframe.value.rotation.x run function anim:compiler/new_key/rotation/x
execute if data storage anim:runtime search_data[{id:"rotation.y"}] if data storage anim:runtime got_keyframe.value.rotation.y run function anim:compiler/new_key/rotation/y

#>If not found at all
execute if data storage anim:runtime search_data[{id:"head.x"}] unless data storage anim:runtime keyframes[].value.head.x run function anim:compiler/new_key/head/x
execute if data storage anim:runtime search_data[{id:"head.y"}] unless data storage anim:runtime keyframes[].value.head.y run function anim:compiler/new_key/head/y
execute if data storage anim:runtime search_data[{id:"head.z"}] unless data storage anim:runtime keyframes[].value.head.z run function anim:compiler/new_key/head/z
execute if data storage anim:runtime search_data[{id:"body.x"}] unless data storage anim:runtime keyframes[].value.body.x run function anim:compiler/new_key/body/x
execute if data storage anim:runtime search_data[{id:"body.y"}] unless data storage anim:runtime keyframes[].value.body.y run function anim:compiler/new_key/body/y
execute if data storage anim:runtime search_data[{id:"body.z"}] unless data storage anim:runtime keyframes[].value.body.z run function anim:compiler/new_key/body/z
execute if data storage anim:runtime search_data[{id:"r_arm.x"}] unless data storage anim:runtime keyframes[].value.r_arm.x run function anim:compiler/new_key/r_arm/x
execute if data storage anim:runtime search_data[{id:"r_arm.y"}] unless data storage anim:runtime keyframes[].value.r_arm.y run function anim:compiler/new_key/r_arm/y
execute if data storage anim:runtime search_data[{id:"r_arm.z"}] unless data storage anim:runtime keyframes[].value.r_arm.z run function anim:compiler/new_key/r_arm/z
execute if data storage anim:runtime search_data[{id:"l_arm.x"}] unless data storage anim:runtime keyframes[].value.l_arm.x run function anim:compiler/new_key/l_arm/x
execute if data storage anim:runtime search_data[{id:"l_arm.y"}] unless data storage anim:runtime keyframes[].value.l_arm.y run function anim:compiler/new_key/l_arm/y
execute if data storage anim:runtime search_data[{id:"l_arm.z"}] unless data storage anim:runtime keyframes[].value.l_arm.z run function anim:compiler/new_key/l_arm/z
execute if data storage anim:runtime search_data[{id:"r_leg.x"}] unless data storage anim:runtime keyframes[].value.r_leg.x run function anim:compiler/new_key/r_leg/x
execute if data storage anim:runtime search_data[{id:"r_leg.y"}] unless data storage anim:runtime keyframes[].value.r_leg.y run function anim:compiler/new_key/r_leg/y
execute if data storage anim:runtime search_data[{id:"r_leg.z"}] unless data storage anim:runtime keyframes[].value.r_leg.z run function anim:compiler/new_key/r_leg/z
execute if data storage anim:runtime search_data[{id:"l_leg.x"}] unless data storage anim:runtime keyframes[].value.l_leg.x run function anim:compiler/new_key/l_leg/x
execute if data storage anim:runtime search_data[{id:"l_leg.y"}] unless data storage anim:runtime keyframes[].value.l_leg.y run function anim:compiler/new_key/l_leg/y
execute if data storage anim:runtime search_data[{id:"l_leg.z"}] unless data storage anim:runtime keyframes[].value.l_leg.z run function anim:compiler/new_key/l_leg/z
execute if data storage anim:runtime search_data[{id:"pos.x"}] unless data storage anim:runtime keyframes[].value.pos.x run function anim:compiler/new_key/pos/x
execute if data storage anim:runtime search_data[{id:"pos.y"}] unless data storage anim:runtime keyframes[].value.pos.y run function anim:compiler/new_key/pos/y
execute if data storage anim:runtime search_data[{id:"pos.z"}] unless data storage anim:runtime keyframes[].value.pos.z run function anim:compiler/new_key/pos/z
execute if data storage anim:runtime search_data[{id:"rotation.x"}] unless data storage anim:runtime keyframes[].value.rotation.x run function anim:compiler/new_key/rotation/x
execute if data storage anim:runtime search_data[{id:"rotation.y"}] unless data storage anim:runtime keyframes[].value.rotation.y run function anim:compiler/new_key/rotation/y

scoreboard players add $_search_tick _anim 1