scoreboard players reset $_got_tick _anim
execute store result score $_got_tick _anim run data get storage anim:editor search_keyframes[0].tick
execute if score $_get_tick _anim = $_got_tick _anim run scoreboard players set $_keyframe_found _anim 1
execute if score $_get_tick _anim = $_got_tick _anim unless score $_delete_keyframe _anim matches 1 run data modify storage anim:editor search_keyframes[0] set from storage anim:editor current_keyframe
execute if score $_get_tick _anim = $_got_tick _anim if score $_delete_keyframe _anim matches 1 run data remove storage anim:editor search_keyframes[0]
data modify storage anim:editor output_keyframes append from storage anim:editor search_keyframes[0]
data remove storage anim:editor search_keyframes[0]

execute if data storage anim:editor search_keyframes[0] run function anim_edit:set_anim_keyframe_loop