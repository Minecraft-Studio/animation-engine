execute store result score $_got_tick _anim run data get storage anim:editor search_get[0].tick
execute store result score $_got_part _anim run data get storage anim:editor search_get[0].part
execute if score $_got_tick _anim = $_get_tick _anim if score $_got_part _anim = $_get_part _anim run data modify storage anim:editor result_get set from storage anim:editor search_get[0]
data remove storage anim:editor search_get[0]

execute unless data storage anim:editor result_get if data storage anim:editor search_get[0] run function anim:gui/editor/run/search/get_tick_data/loop