#
#>Returns keyframe with tick and removes it from the list
# Input: $_comp_tick; search_keyframes
# Output: got_keyframe; output_keyframes
execute store result score $_got_tick _anim run data get storage anim:runtime search_keyframes[0].tick
execute unless score $_got_tick _anim = $_comp_tick _anim run data modify storage anim:runtime output_keyframes append from storage anim:runtime search_keyframes[0]
execute if score $_got_tick _anim = $_comp_tick _anim run data modify storage anim:runtime got_keyframe set from storage anim:runtime search_keyframes[0]
execute if score $_got_tick _anim = $_search_tick _anim run data modify storage anim:runtime got_keyframe set from storage anim:runtime search_keyframes[0]
data remove storage anim:runtime search_keyframes[0]
execute if data storage anim:runtime search_keyframes[0] run function anim:compiler/get_keyframe