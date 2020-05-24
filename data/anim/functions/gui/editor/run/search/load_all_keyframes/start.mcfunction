data modify storage anim:editor search set from storage anim:editor keyframes
scoreboard players operation $_page_max _anim = $_page _anim
scoreboard players set 19 _anim 19
scoreboard players operation $_page_max _anim += 19 _anim
scoreboard players reset 19 _anim
function anim:gui/editor/run/search/load_all_keyframes/loop
