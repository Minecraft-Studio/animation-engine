execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result storage anim:editor temp_get1 int 1000 run data get storage anim:editor last_compile_keyframe.rotate.head.x.value
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result score $_comp_calc1 _anim run data get storage anim:editor temp_get1
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run data remove storage anim:editor temp_get1
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result score $_comp_calc2 _anim run data get storage anim:editor last_compile_keyframe.rotate.head.x.tick
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim = $_comp_value _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim -= $_comp_calc1 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_tick _anim = $_get_tick _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_tick _anim -= $_comp_calc2 _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick _anim
execute store result storage anim:editor result_comp_tick.rotate.head.x.value float 0.001 run scoreboard players get $_comp_value _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result storage anim:editor result_comp_tick_old.rotate.head.x.add float 0.001 run scoreboard players get $_comp_value_add _anim
execute store result storage anim:editor last_compile_keyframe.rotate.head.x.value float 0.001 run scoreboard players get $_comp_value _anim
execute store result storage anim:editor last_compile_keyframe.rotate.head.x.tick int 1 run scoreboard players get $_get_tick _anim
execute if data storage anim:editor last_compile_keyframe.rotate.head.x.value store result storage anim:editor last_compile_keyframe.rotate.head.x.add float 0.001 run scoreboard players get $_comp_value_add _anim