#runs when loading keyframes (triggered by changing page, loading the editor)
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
# load into the editor
execute if score $_search_t _anim = $_key_col _anim if score $_search_p _anim = $_key_row _anim run data modify storage anim:editor current_keyframe set from storage anim:editor search[0]
# rest data
data remove storage anim:editor search[0]
execute if data storage anim:editor current_keyframe run data remove storage anim:editor search
execute if data storage anim:editor search[] run function anim_edit:gui/editor/run/search/load_keyframe/loop