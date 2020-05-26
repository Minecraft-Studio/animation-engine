#runs when delete keyframe (triggered by delete button)
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
execute if score $_search_t _anim = $_dkey_col _anim if score $_search_p _anim = $_dkey_row _anim run scoreboard players set $_key_deleted _anim 1
execute unless score $_key_deleted _anim matches 1 run data modify storage anim:editor result append from storage anim:editor search[0]
scoreboard players reset $_key_deleted _anim
data remove storage anim:editor search[0]
#finish loop
# remove the whole keyframes incase the result is empty
execute unless data storage anim:editor search[] run data remove storage anim:editor keyframes
# set the keyframes to result (success if result has something)
execute unless data storage anim:editor search[] run data modify storage anim:editor keyframes set from storage anim:editor result
# loop
execute if data storage anim:editor search[] run function anim:gui/editor/run/search/delete_keyframe/loop
# refresh the screen
execute unless data storage anim:editor search[] run function anim:gui/editor/run/search/load_all_keyframes/start