#Head x
scoreboard players set $_comp_value_exists _anim 0
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.x
execute if data storage anim:editor result_get.rotate.head.x run scoreboard players set $_comp_value_exists _anim 1
# apply data
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result score $_comp_calc1 _anim run data get storage anim:editor last_compile_keyframe.rotate.head.x.value
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result score $_comp_calc2 _anim run data get storage anim:editor last_compile_keyframe.rotate.head.x.tick
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim = $_comp_value _anim
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim -= $_comp_calc1 _anim
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_tick _anim = $_get_tick _anim
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_tick _anim -= $_comp_calc2 _anim
execute if score $_comp_value_exists _anim matches 1 if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick _anim
execute if score $_comp_value_exists _anim matches 1 store result storage anim:editor result_comp_tick.rotate.head.x.value int 1 run scoreboard players get $_comp_value _anim
execute if score $_comp_value_exists _anim matches 1 store result storage anim:editor result_comp_tick.rotate.head.x.tick int 1 run scoreboard players get $_get_tick _anim
# FIX: CHECK IF $_comp_value_add _anim EXISTS
execute if score $_comp_value_exists _anim matches 1 if score $_comp_value_add _anim matches -999999.. store result storage anim:editor result_comp_tick.rotate.head.x.add int 1 run scoreboard players get $_comp_value_add _anim
execute if score $_comp_value_exists _anim matches 1 store result storage anim:editor last_compile_keyframe.rotate.head.x.value int 1 run scoreboard players get $_comp_value _anim
execute if score $_comp_value_exists _anim matches 1 store result storage anim:editor last_compile_keyframe.rotate.head.x.tick int 1 run scoreboard players get $_get_tick _anim
execute if score $_comp_value_exists _anim matches 1 if score $_comp_value_add _anim matches -999999.. store result storage anim:editor last_compile_keyframe.rotate.head.x.add int 1 run scoreboard players get $_comp_value_add _anim

execute if data storage anim:editor result_comp_tick run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick

# FIX: MAKE SURE 0.001 IS POSSIBLE, SET SCORES TIMES 1000 AND SET STORE STORAGE TIMES 0.001