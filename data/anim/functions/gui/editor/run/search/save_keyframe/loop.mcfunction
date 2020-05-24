#runs only when saving a keyframe
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
scoreboard players operation $_tick_save _anim = $_sel_col _anim
scoreboard players operation $_tick_save _anim += $_page _anim
execute if score $_search_t _anim = $_tick_save _anim if score $_search_p _anim = $_sel_row _anim run function anim:gui/editor/run/search/save_keyframe/founded
tellraw @a ["",{"score":{"name":"$_search_t","objective":"_anim"}},{"text":" / "},{"score":{"name":"$_search_p","objective":"_anim"}},{"text":" / "},{"score":{"name":"$_sel_row","objective":"_anim"}},{"text":" / "},{"score":{"name":"$_sel_col","objective":"_anim"}}]
data modify storage anim:editor result append from storage anim:editor search[0]
data remove storage anim:editor search[0]
scoreboard players reset $_tick_save _anim
execute if data storage anim:editor search[] run function anim:gui/editor/run/search/save_keyframe/loop