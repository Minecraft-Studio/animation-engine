#FIX: Set it per each coordinate instead of for whole keyframe
execute if data storage anim:editor last_compile_keyframe.position.z.value store result storage anim:editor result_comp_tick_old.position.z.type int 1 run data get storage anim:editor result_get.extra.rotate
execute if data storage anim:editor last_compile_keyframe.position.z.value store result score $_comp_calc1 _anim run data get storage anim:editor last_compile_keyframe.position.z.value 1000
execute if data storage anim:editor last_compile_keyframe.position.z.value store result score $_comp_calc2 _anim run data get storage anim:editor last_compile_keyframe.position.z.tick
execute if data storage anim:editor last_compile_keyframe.position.z.value run scoreboard players operation $_comp_value_add _anim = $_comp_value _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value run scoreboard players operation $_comp_value_add _anim -= $_comp_calc1 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value run scoreboard players operation $_comp_value_tick _anim = $_get_tick _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value run scoreboard players operation $_comp_value_tick _anim -= $_comp_calc2 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick _anim
# Extra: Ease In
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_ease_add _anim = $_comp_value_add _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_ease_add _anim *= $1000 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_tick2 _anim = $_comp_value_tick _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick2 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_tick2 _anim *= $1000 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} run scoreboard players operation $_comp_value_tick2 _anim /= $2 _anim
# Extra: Ease Out
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_ease_add _anim = $_comp_value_add _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_ease_add _anim *= $1000 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_tick2 _anim = $_comp_value_tick _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_tick3 _anim = $_comp_value_tick _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_add _anim /= $_comp_value_tick2 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_tick2 _anim *= $1000 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_tick2 _anim /= $2 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run scoreboard players operation $_comp_value_ease_add _anim /= $_comp_value_tick2 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} run function anim_edit:gui/editor/run/search/compile/ease_out_loop

execute store result storage anim:editor result_comp_tick.position.z.value float 0.001 run scoreboard players get $_comp_value _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value unless data storage anim:editor {result_comp_tick:{extra:{rotate:4}}} store result storage anim:editor result_comp_tick_old.position.z.add float 0.001 run scoreboard players get $_comp_value_add _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:2}}} store result storage anim:editor result_comp_tick_old.position.z.ease_add float 0.001 run scoreboard players operation $_comp_value_ease_add _anim /= $_comp_value_tick2 _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value if data storage anim:editor {result_comp_tick:{extra:{rotate:3}}} store result storage anim:editor result_comp_tick_old.position.z.ease_add float 0.001 run scoreboard players get $_comp_value_ease_add _anim
execute store result storage anim:editor last_compile_keyframe.position.z.value float 0.001 run scoreboard players get $_comp_value _anim
execute store result storage anim:editor last_compile_keyframe.position.z.tick int 1 run scoreboard players get $_get_tick _anim
execute if data storage anim:editor last_compile_keyframe.position.z.value unless data storage anim:editor {result_comp_tick:{extra:{rotate:4}}} store result storage anim:editor last_compile_keyframe.position.z.add float 0.001 run scoreboard players get $_comp_value_add _anim