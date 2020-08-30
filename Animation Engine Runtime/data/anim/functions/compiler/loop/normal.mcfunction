# get keyframe with tick
data modify storage anim:runtime search_keyframes set from storage anim:runtime keyframes
data modify storage anim:runtime output_keyframes set value []
data remove storage anim:runtime got_keyframe
function anim:compiler/get_keyframe
data modify storage anim:runtime keyframes set from storage anim:runtime output_keyframes

#>reset
scoreboard players reset $_search_tick _anim
data modify storage anim:runtime compile_import set value {}

#>check if value exists for each type and set it up
execute if data storage anim:runtime got_keyframe.value.head.x run function anim:compiler/set/head/x

#>if new data exists, run calculate_check (checks if $_comp_tick = graph tick) and then calculate function
# tellraw @p {"nbt":"compile_data[{id:\"head.x\"}]","storage":"anim:runtime","color":"green"}
execute if data storage anim:runtime compile_data[{id:"head.x"}].new_key_data run function anim:compiler/calc/head/x
# tellraw @p {"nbt":"compile_data[{id:\"head.x\"}]","storage":"anim:runtime","color":"red"}

# tellraw @p {"nbt":"compile_import","storage":"anim:runtime","color":"blue"}
