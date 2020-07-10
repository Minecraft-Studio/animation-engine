#Setup
# 1000, so it can calculate *1000 on scorebaords
scoreboard players set $_calc_1000 _anim 1000


#extra
# get & apply data
execute store result storage anim:editor result_comp_tick.extra.rotate int 1 run data get storage anim:editor result_get.extra.rotate
execute store result storage anim:editor result_comp_tick.extra.move int 1 run data get storage anim:editor result_get.extra.move


#head x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.head.x run function anim_edit:gui/editor/run/search/compile/calc/head/x

#head y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.head.y run function anim_edit:gui/editor/run/search/compile/calc/head/y

#head z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.head.z run function anim_edit:gui/editor/run/search/compile/calc/head/z


#body x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.body.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.body.x run function anim_edit:gui/editor/run/search/compile/calc/body/x

#body y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.body.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.body.y run function anim_edit:gui/editor/run/search/compile/calc/body/y

#body z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.body.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.body.z run function anim_edit:gui/editor/run/search/compile/calc/body/z


#l_arm x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_arm.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_arm.x run function anim_edit:gui/editor/run/search/compile/calc/l_arm/x

#l_arm y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_arm.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_arm.y run function anim_edit:gui/editor/run/search/compile/calc/l_arm/y

#l_arm z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_arm.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_arm.z run function anim_edit:gui/editor/run/search/compile/calc/l_arm/z


#r_arm x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_arm.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_arm.x run function anim_edit:gui/editor/run/search/compile/calc/r_arm/x

#r_arm y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_arm.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_arm.y run function anim_edit:gui/editor/run/search/compile/calc/r_arm/y

#r_arm z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_arm.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_arm.z run function anim_edit:gui/editor/run/search/compile/calc/r_arm/z


#l_leg x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_leg.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_leg.x run function anim_edit:gui/editor/run/search/compile/calc/l_leg/x

#l_leg y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_leg.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_leg.y run function anim_edit:gui/editor/run/search/compile/calc/l_leg/y

#l_leg z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_leg.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_leg.z run function anim_edit:gui/editor/run/search/compile/calc/l_leg/z


#r_leg x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_leg.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_leg.x run function anim_edit:gui/editor/run/search/compile/calc/r_leg/x

#r_leg y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_leg.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_leg.y run function anim_edit:gui/editor/run/search/compile/calc/r_leg/y

#r_leg z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_leg.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_leg.z run function anim_edit:gui/editor/run/search/compile/calc/r_leg/z


#position x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.position.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.position.x run function anim_edit:gui/editor/run/search/compile/calc/pos/x

#position y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.position.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.position.y run function anim_edit:gui/editor/run/search/compile/calc/pos/y

#position z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.position.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.position.z run function anim_edit:gui/editor/run/search/compile/calc/pos/z




#Apply everything
execute store result storage anim:editor result_comp_tick.tick int 1 run scoreboard players get $_get_tick _anim
execute if data storage anim:editor result_comp_tick_old store result storage anim:editor result_comp_tick.tick_left int 1 run scoreboard players get $_comp_value_tick _anim
execute if data storage anim:editor result_comp_tick_old run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old
execute if data storage anim:editor result_comp_tick run data modify storage anim:editor result_comp_tick_old set from storage anim:editor result_comp_tick
data remove storage anim:editor result_comp_tick

#Delete the keyframe calculated
function anim_edit:gui/editor/run/search/compile/remove_tick/start

# If it's the last keyframe, just add it to compile array (nothing to calculate)
execute if score $_comp_kleft _anim matches 1 run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old