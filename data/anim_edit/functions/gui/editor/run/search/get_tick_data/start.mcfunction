#Gets data from keyframes[]
#Input: $_get_tick (the tick looking for), $_get_part (the part looking for)
#Output: result_get{}
data modify storage anim:editor search_get set from storage anim:editor keyframes
data remove storage anim:editor result_get
function anim_edit:gui/editor/run/search/get_tick_data/loop
data remove storage anim:editor search_get
scoreboard players reset $_got_tick _anim
scoreboard players reset $_got_part _anim