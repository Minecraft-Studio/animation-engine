execute unless score $_search_tick _anim matches 1.. run scoreboard players operation $_search_tick _anim = $_get_tick _anim
# get keyframe with tick
data modify storage anim:runtime search_keyframes set from storage anim:runtime keyframes
data remove storage anim:runtime got_keyframe
function anim:compiler/get_keyframe

#>If found
execute if data storage anim:runtime search_data[{id:"head.x"}] if data storage anim:runtime got_keyframe.value.head.x run function anim:compiler/new_key/head/x

#>If not found at all
execute if data storage anim:runtime search_data[{id:"head.x"}] unless data storage anim:runtime keyframes[].value.head.x run function anim:compiler/new_key/head/x

scoreboard players add $_search_tick _anim 1