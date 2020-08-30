data modify storage anim:runtime compile_data[{id:"head.x"}].graph set from storage anim:runtime got_keyframe.graph
execute store result score $_comp_tick1 _anim run data get storage anim:runtime compile_data[{id:"head.x"}].last_key_data.tick
# tellraw @p [":: ",{"nbt":"compile_data[{id:\"head.x\"}]","storage": "anim:runtime","color":"gold"}]
execute store result storage anim:runtime compile_data[{id:"head.x"}].addtick int 1 store result score $_comp_tick2 _anim run data get storage anim:runtime got_keyframe.tick
# tellraw @p ["_comp_tick2: ",{"score":{"name":"$_comp_tick2","objective": "_anim"},"color":"gold"}]
# tellraw @p ["_comp_tick1: ",{"score":{"name":"$_comp_tick1","objective": "_anim"},"color":"gold"}]
scoreboard players operation $_comp_tick2 _anim -= $_comp_tick1 _anim
# tellraw @p ["calc: ",{"score":{"name":"$_comp_tick2","objective": "_anim"},"color":"yellow"}]
execute store result storage anim:runtime compile_data[{id:"head.x"}].new_key_data.tick int 1 run scoreboard players add $_comp_tick2 _anim 1
# execute store result storage anim:runtime compile_data[{id:"head.x"}].last_key_data.tick int 1 run scoreboard players set $_comp_tick2 _anim 1
data modify storage anim:runtime compile_data[{id:"head.x"}].new_key_data.value set from storage anim:runtime got_keyframe.value.head.x
data modify storage anim:runtime compile_data[{id:"head.x"}].graph insert 0 value {x:0,y:0}
data modify storage anim:runtime got_compile_data set from storage anim:runtime compile_data[{id:"head.x"}]
data remove storage anim:runtime compile_import_calc
function anim:compiler/calculate 
data modify storage anim:runtime compile_import.value.head.x set from storage anim:runtime compile_import_calc
data modify storage anim:runtime compile_data[{id:"head.x"}] set from storage anim:runtime got_compile_data
# execute store result score $_graph_x _anim run data get storage anim:runtime compile_data[{id:"head.x"}].graph[0].x
# execute store result score $_comp_tick1 _anim run data get storage anim:runtime compile_data[{id:"head.x"}].last_key_data.tick
# scoreboard players operation $_graph_x _anim *= $_comp_tick2 _anim
# execute store result storage anim:runtime compile_data[{id:"head.x"}].tick int 1 run scoreboard players operation $_graph_x _anim /= $100 _anim
data remove storage anim:runtime search_data[{id:"head.x"}]
# say new_key