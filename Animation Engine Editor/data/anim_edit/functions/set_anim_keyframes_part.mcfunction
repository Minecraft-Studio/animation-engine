#
#>Sets animation keyframes (see set_anim_keyframe for setup)
# Input: $_get_part; anim_data_part
# Output:
execute unless data storage anim:editor search_anim_data[0] run scoreboard players reset $_data_part_found _anim
execute unless data storage anim:editor search_anim_data[0] run data modify storage anim:editor output_anim_data set value []
execute unless data storage anim:editor search_anim_data[0] run data modify storage anim:editor search_anim_data set from storage anim:editor anim_data.keyframes
scoreboard players reset $_got_part _anim
execute store result score $_got_part _anim run data get storage anim:editor search_anim_data[0].part
execute if score $_got_part _anim = $_get_part _anim run scoreboard players set $_data_part_found _anim 1
execute if score $_got_part _anim = $_get_part _anim run data modify storage anim:editor search_anim_data[0].data set from storage anim:editor anim_data_part
data modify storage anim:editor output_anim_data append from storage anim:editor search_anim_data[0]
data remove storage anim:editor search_anim_data[0]

execute if data storage anim:editor search_anim_data[0] run function anim_edit:set_anim_keyframes_part
tellraw @p {"nbt":"output_anim_data","storage":"anim:editor"}
execute if data storage anim:editor output_anim_data unless score $_data_part_found _anim matches 1 store result storage anim:editor import_anim_data.part int 1 run scoreboard players get $_get_part _anim
execute if data storage anim:editor output_anim_data unless score $_data_part_found _anim matches 1 run data modify storage anim:editor import_anim_data.data set from storage anim:editor anim_data_part
execute if data storage anim:editor output_anim_data unless score $_data_part_found _anim matches 1 run data modify storage anim:editor output_anim_data append from storage anim:editor import_anim_data
tellraw @p {"nbt":"output_anim_data","storage":"anim:editor"}
execute if data storage anim:editor output_anim_data run data modify storage anim:editor anim_data.keyframes set from storage anim:editor output_anim_data
data remove storage anim:editor output_anim_data
data remove storage anim:editor search_anim_data
data remove storage anim:editor import_anim_data
