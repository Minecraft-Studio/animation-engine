#runs when loading keyframes (triggered by changing page, loading the editor)
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
# load into the editor
execute if score $_search_t _anim >= $_page _anim if score $_search_t _anim <= $_page_max _anim run function anim:gui/editor/run/search/load_all_keyframes/founded
# rest data
data remove storage anim:editor search[0]
scoreboard players reset $_tick_save _anim
execute if data storage anim:editor search[] run function anim:gui/editor/run/search/load_all_keyframes/loop