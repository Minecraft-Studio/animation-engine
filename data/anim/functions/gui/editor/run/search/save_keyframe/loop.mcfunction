#runs only when saving a keyframe
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
execute if score $_search_t _anim = $_tick_save _anim if score $_search_p _anim = $_sel_row _anim run function anim:gui/editor/run/search/save_keyframe/founded
data modify storage anim:editor result append from storage anim:editor search[0]
data remove storage anim:editor search[0]
execute if data storage anim:editor search[] run function anim:gui/editor/run/search/save_keyframe/loop