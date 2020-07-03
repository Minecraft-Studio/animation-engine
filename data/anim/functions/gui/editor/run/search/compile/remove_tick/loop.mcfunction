execute store result score $_get_tick2 _anim run data get storage anim:editor search_del[0].tick
execute store result score $_get_part2 _anim run data get storage anim:editor search_del[0].part
scoreboard players reset $_del_key_found _anim
execute if score $_get_tick2 _anim = $_get_tick _anim if score $_get_part2 _anim = $_get_part _anim run scoreboard players set $_del_key_found _anim 1
execute unless score $_del_key_found _anim matches 1 run data modify storage anim:editor result_del append from storage anim:editor search_del[0]
data remove storage anim:editor search_del[0]

execute if data storage anim:editor search_del[0] run function anim:gui/editor/run/search/compile/remove_tick/loop