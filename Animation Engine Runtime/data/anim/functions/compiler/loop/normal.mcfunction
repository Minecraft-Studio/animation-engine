# get keyframe with tick
data modify storage anim:runtime search_keyframes set from storage anim:runtime keyframes
data modify storage anim:runtime output_keyframes set value []
data remove storage anim:runtime got_keyframe
function anim:compiler/get_keyframe
data modify storage anim:runtime keyframes set from storage anim:runtime output_keyframes

#>reset
scoreboard players reset $_search_tick _anim

#>check if value exists for each type and set it up
execute if data storage anim:runtime got_keyframe.value.head.x run function anim:compiler/set/head/x
execute if data storage anim:runtime got_keyframe.value.head.y run function anim:compiler/set/head/y
execute if data storage anim:runtime got_keyframe.value.head.z run function anim:compiler/set/head/z
execute if data storage anim:runtime got_keyframe.value.body.x run function anim:compiler/set/body/x
execute if data storage anim:runtime got_keyframe.value.body.y run function anim:compiler/set/body/y
execute if data storage anim:runtime got_keyframe.value.body.z run function anim:compiler/set/body/z
execute if data storage anim:runtime got_keyframe.value.r_arm.x run function anim:compiler/set/r_arm/x
execute if data storage anim:runtime got_keyframe.value.r_arm.y run function anim:compiler/set/r_arm/y
execute if data storage anim:runtime got_keyframe.value.r_arm.z run function anim:compiler/set/r_arm/z
execute if data storage anim:runtime got_keyframe.value.l_arm.x run function anim:compiler/set/l_arm/x
execute if data storage anim:runtime got_keyframe.value.l_arm.y run function anim:compiler/set/l_arm/y
execute if data storage anim:runtime got_keyframe.value.l_arm.z run function anim:compiler/set/l_arm/z
execute if data storage anim:runtime got_keyframe.value.r_leg.x run function anim:compiler/set/r_leg/x
execute if data storage anim:runtime got_keyframe.value.r_leg.y run function anim:compiler/set/r_leg/y
execute if data storage anim:runtime got_keyframe.value.r_leg.z run function anim:compiler/set/r_leg/z
execute if data storage anim:runtime got_keyframe.value.l_leg.x run function anim:compiler/set/l_leg/x
execute if data storage anim:runtime got_keyframe.value.l_leg.y run function anim:compiler/set/l_leg/y
execute if data storage anim:runtime got_keyframe.value.l_leg.z run function anim:compiler/set/l_leg/z
execute if data storage anim:runtime got_keyframe.value.pos.x run function anim:compiler/set/pos/x
execute if data storage anim:runtime got_keyframe.value.pos.y run function anim:compiler/set/pos/y
execute if data storage anim:runtime got_keyframe.value.pos.z run function anim:compiler/set/pos/z
execute if data storage anim:runtime got_keyframe.value.rotation.x run function anim:compiler/set/rotation/x
execute if data storage anim:runtime got_keyframe.value.rotation.y run function anim:compiler/set/rotation/y

#>if new data exists, run calculate_check (checks if $_comp_tick = graph tick) and then calculate function
# tellraw @p {"nbt":"compile_data[{id:\"head.x\"}]","storage":"anim:runtime","color":"green"}
execute if data storage anim:runtime compile_data[{id:"head.x"}].new_key_data run function anim:compiler/calc/head/x
execute if data storage anim:runtime compile_data[{id:"head.y"}].new_key_data run function anim:compiler/calc/head/y
execute if data storage anim:runtime compile_data[{id:"head.z"}].new_key_data run function anim:compiler/calc/head/z
execute if data storage anim:runtime compile_data[{id:"body.x"}].new_key_data run function anim:compiler/calc/body/x
execute if data storage anim:runtime compile_data[{id:"body.y"}].new_key_data run function anim:compiler/calc/body/y
execute if data storage anim:runtime compile_data[{id:"body.z"}].new_key_data run function anim:compiler/calc/body/z
execute if data storage anim:runtime compile_data[{id:"r_arm.x"}].new_key_data run function anim:compiler/calc/r_arm/x
execute if data storage anim:runtime compile_data[{id:"r_arm.y"}].new_key_data run function anim:compiler/calc/r_arm/y
execute if data storage anim:runtime compile_data[{id:"r_arm.z"}].new_key_data run function anim:compiler/calc/r_arm/z
execute if data storage anim:runtime compile_data[{id:"l_arm.x"}].new_key_data run function anim:compiler/calc/l_arm/x
execute if data storage anim:runtime compile_data[{id:"l_arm.y"}].new_key_data run function anim:compiler/calc/l_arm/y
execute if data storage anim:runtime compile_data[{id:"l_arm.z"}].new_key_data run function anim:compiler/calc/l_arm/z
execute if data storage anim:runtime compile_data[{id:"r_leg.x"}].new_key_data run function anim:compiler/calc/r_leg/x
execute if data storage anim:runtime compile_data[{id:"r_leg.y"}].new_key_data run function anim:compiler/calc/r_leg/y
execute if data storage anim:runtime compile_data[{id:"r_leg.z"}].new_key_data run function anim:compiler/calc/r_leg/z
execute if data storage anim:runtime compile_data[{id:"l_leg.x"}].new_key_data run function anim:compiler/calc/l_leg/x
execute if data storage anim:runtime compile_data[{id:"l_leg.y"}].new_key_data run function anim:compiler/calc/l_leg/y
execute if data storage anim:runtime compile_data[{id:"l_leg.z"}].new_key_data run function anim:compiler/calc/l_leg/z
execute if data storage anim:runtime compile_data[{id:"pos.x"}].new_key_data run function anim:compiler/calc/pos/x
execute if data storage anim:runtime compile_data[{id:"pos.y"}].new_key_data run function anim:compiler/calc/pos/y
execute if data storage anim:runtime compile_data[{id:"pos.z"}].new_key_data run function anim:compiler/calc/pos/z
execute if data storage anim:runtime compile_data[{id:"rotation.x"}].new_key_data run function anim:compiler/calc/rotation/x
execute if data storage anim:runtime compile_data[{id:"rotation.y"}].new_key_data run function anim:compiler/calc/rotation/y
# tellraw @p {"nbt":"compile_data[{id:\"head.x\"}]","storage":"anim:runtime","color":"red"}

# tellraw @p {"nbt":"compile_import","storage":"anim:runtime","color":"blue"}
#>Check for extra
execute if data storage anim:runtime got_keyframe.extra run function anim:compiler/set/extra
