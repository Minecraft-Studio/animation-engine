#Removes data from search_comp[]
#Input: $_get_tick (the tick looking for), $_get_part (the part looking for)
data modify storage anim:editor search_del set from storage anim:editor search_comp
data remove storage anim:editor result_del
function anim:gui/editor/run/search/compile/remove_tick/loop
execute if data storage anim:editor result_del run data modify storage anim:editor search_comp set from storage anim:editor result_del
execute unless data storage anim:editor result_del run data remove storage anim:editor search_comp
data remove storage anim:editor search_del
data remove storage anim:editor result_del
scoreboard players reset $_get_tick2 _anim
scoreboard players reset $_get_part2 _anim