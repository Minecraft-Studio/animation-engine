#Setup
# 1000, so it can calculate *1000 on scorebaords
scoreboard players set $_calc_1000 _anim 1000

#Head x
scoreboard players set $_comp_value_exists _anim 0
# get data
execute store result storage anim:editor temp_get1 int 1 run data get storage anim:editor result_get.rotate.head.x 1000
execute store result score $_comp_value _anim run data get storage anim:editor temp_get1
data remove storage anim:editor temp_get1
execute if data storage anim:editor result_get.rotate.head.x run scoreboard players set $_comp_value_exists _anim 1
# apply data
execute if score $_comp_value_exists _anim matches 1 run function anim_edit:gui/editor/run/search/compile/calc/head/x

#Head y
scoreboard players set $_comp_value_exists _anim 0
# get data
execute store result storage anim:editor temp_get1 int 1 run data get storage anim:editor result_get.rotate.head.y 1000
execute store result score $_comp_value _anim run data get storage anim:editor temp_get1
data remove storage anim:editor temp_get1
execute if data storage anim:editor result_get.rotate.head.y run scoreboard players set $_comp_value_exists _anim 1
# apply data
execute if score $_comp_value_exists _anim matches 1 run function anim_edit:gui/editor/run/search/compile/calc/head/y


#Extra
scoreboard players set $_comp_value_exists _anim 0
# get & apply data
execute store result storage anim:editor result_comp_tick.extra.rotate int 1 run data get storage anim:editor result_get.extra.rotate
execute store result storage anim:editor result_comp_tick.extra.move int 1 run data get storage anim:editor result_get.extra.move

#Apply everything
execute store result storage anim:editor result_comp_tick.tick int 1 run scoreboard players get $_get_tick _anim
execute if data storage anim:editor result_comp_tick_old run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old
execute if data storage anim:editor result_comp_tick run data modify storage anim:editor result_comp_tick_old set from storage anim:editor result_comp_tick
data remove storage anim:editor result_comp_tick

#Delete the keyframe calculated
function anim_edit:gui/editor/run/search/compile/remove_tick/start

# If it's the last keyframe, just add it to compile array (nothing to calculate)
execute if score $_comp_kleft _anim matches 1 run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old