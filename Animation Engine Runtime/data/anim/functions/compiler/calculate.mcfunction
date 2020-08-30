execute store result score $_graph_x _anim run data get storage anim:runtime got_compile_data.graph[0].x
execute store result score $_graph_y _anim run data get storage anim:runtime got_compile_data.graph[0].y
execute store result score $_graph_x2 _anim store result score $_graph_x0 _anim run data get storage anim:runtime got_compile_data.graph[1].x
execute store result score $_graph_y2 _anim run data get storage anim:runtime got_compile_data.graph[1].y
execute unless data storage anim:runtime got_compile_data.graph[1] run scoreboard players set $_graph_x2 _anim 100
execute unless data storage anim:runtime got_compile_data.graph[1] run scoreboard players set $_graph_y2 _anim 100
execute unless data storage anim:runtime got_compile_data.graph[1] run scoreboard players set $_graph_x0 _anim 100

execute store result score $_comp_realtick1 _anim run data get storage anim:runtime got_compile_data.last_key_data.tick
scoreboard players set $_comp_tick1 _anim 1
execute store result score $_comp_value1 _anim run data get storage anim:runtime got_compile_data.last_key_data.value 1000
# tellraw @p {"score":{"name":"$_comp_value1","objective": "_anim"},"color":"green"}

execute store result score $_comp_tick2 _anim run data get storage anim:runtime got_compile_data.new_key_data.tick
execute store result score $_comp_value0 _anim store result score $_comp_value2 _anim run data get storage anim:runtime got_compile_data.new_key_data.value 1000
# tellraw @p {"score":{"name":"$_comp_value2","objective": "_anim"},"color":"dark_green"}

execute store result score $_comp_addtick _anim run data get storage anim:runtime got_compile_data.addtick
#>convert graph % -> value
# To calc %:
# value1 - 0% value
# value2 - 100% value

# value = value2 - value1
# %_to_value = value1 + (value * (graph_y / 100))
# Save previous graph_x and graph_y to last_key_data
scoreboard players operation $_comp_value0 _anim -= $_comp_value1 _anim
#>Convert value y1
# tellraw @p ["y1: ",{"score":{"name":"$_comp_value1","objective": "_anim"},"color":"dark_gray"}]
# tellraw @p ["y1%: ",{"score":{"name":"$_graph_y","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_graph_y _anim *= $_comp_value0 _anim
scoreboard players operation $_graph_y _anim /= $100 _anim
execute store result storage anim:runtime compile_import_calc.value float 0.001 run scoreboard players operation $_graph_y _anim += $_comp_value1 _anim
# tellraw @p ["y1: ",{"score":{"name":"$_graph_y","objective": "_anim"},"color":"gray"}]
#>Convert value y2
# tellraw @p ["y2: ",{"score":{"name":"$_comp_value1","objective": "_anim"},"color":"dark_gray"}]
# tellraw @p ["y2%: ",{"score":{"name":"$_graph_y2","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_graph_y2 _anim *= $_comp_value0 _anim
scoreboard players operation $_graph_y2 _anim /= $100 _anim
execute run scoreboard players operation $_graph_y2 _anim += $_comp_value1 _anim
# tellraw @p ["y2: ",{"score":{"name":"$_graph_y2","objective": "_anim"},"color":"gray"}]

# scoreboard players operation $_comp_value2 _anim -= $_comp_value1 _anim
# scoreboard players operation $_graph_y _anim *= $_comp_value2 _anim
# execute store result storage anim:runtime got_compile_data.last_key_data.value float 0.001 store result storage anim:runtime compile_import_calc.value float 0.001 run scoreboard players operation $_graph_y _anim *= $10 _anim
# tellraw @p {"score":{"name":"$_graph_y","objective": "_anim"},"color":"gray"}

#>Convert prev tick
# tellraw @p ["x1: ",{"score":{"name":"$_graph_x","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_graph_x _anim *= $_comp_tick2 _anim
# to round it correctly
scoreboard players operation $_get_decimal _anim = $_graph_x _anim
scoreboard players operation $_graph_x _anim /= $100 _anim
function anim:compiler/get_decimal
execute if score $_get_decimal _anim matches 50.. run scoreboard players add $_graph_x _anim 1
execute if score $_graph_x _anim matches 0 run scoreboard players set $_graph_x _anim 1
# tellraw @p ["x1: ",{"score":{"name":"$_graph_x","objective": "_anim"},"color":"gray"}]
#>Convert next tick
# tellraw @p ["x2: ",{"score":{"name":"$_graph_x2","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_graph_x2 _anim *= $_comp_tick2 _anim
# to round it correctly
scoreboard players operation $_get_decimal _anim = $_graph_x2 _anim
# tellraw @p ["x2_100: ",{"score":{"name":"$_get_decimal","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_graph_x2 _anim /= $100 _anim
function anim:compiler/get_decimal
execute if score $_get_decimal _anim matches 50.. run scoreboard players add $_graph_x2 _anim 1
# tellraw @p ["x2: ",{"score":{"name":"$_graph_x2","objective": "_anim"},"color":"gray"}]
#>Next tick to search
# tellraw @p ["next tick: ",{"score":{"name":"$_graph_x0","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_comp_tick2 _anim -= $_comp_tick1 _anim
scoreboard players operation $_graph_x0 _anim *= $_comp_tick2 _anim
# to round it correctly
# scoreboard players operation $_get_decimal _anim = $_graph_x0 _anim
scoreboard players operation $_graph_x0 _anim /= $100 _anim
# function anim:compiler/get_decimal
# execute if score $_get_decimal _anim matches 50.. run scoreboard players add $_graph_x0 _anim 1
execute store result storage anim:runtime got_compile_data.tick int 1 run scoreboard players operation $_graph_x0 _anim += $_comp_realtick1 _anim
# tellraw @p ["next tick: ",{"score":{"name":"$_graph_x0","objective": "_anim"},"color":"gray"}]

#>Calculate add
scoreboard players operation $_graph_y2 _anim -= $_graph_y _anim
tellraw @p ["/: ",{"score":{"name":"$_graph_x2","objective": "_anim"},"color":"dark_gray"},"-",{"score":{"name":"$_graph_x","objective": "_anim"},"color":"dark_gray"}]
scoreboard players operation $_graph_x2 _anim -= $_graph_x _anim
execute if data storage anim:runtime keyframes[].value.head.x store result storage anim:runtime compile_import_calc.add float 0.001 run scoreboard players operation $_graph_y2 _anim /= $_graph_x2 _anim
# tellraw @p ["add: ",{"score":{"name":"$_graph_y2","objective": "_anim"},"color":"yellow"}]


# #>calculate add
# tellraw @p {"score":{"name":"$_comp_value2","objective": "_anim"},"color":"gray"}
# scoreboard players operation $_comp_value2 _anim -= $_graph_y _anim
# execute store result storage anim:runtime compile_import_calc.add float 0.001 run scoreboard players operation $_comp_value2 _anim /= $_comp_tick0 _anim

data remove storage anim:runtime got_compile_data.graph[0]
execute unless data storage anim:runtime got_compile_data.graph[0] run data remove storage anim:runtime got_compile_data.last_key_data
execute unless data storage anim:runtime got_compile_data.graph[0] run data remove storage anim:runtime got_compile_data.new_key_data
execute unless data storage anim:runtime got_compile_data.graph[0] run data remove storage anim:runtime got_compile_data.graph
execute unless data storage anim:runtime got_compile_data.graph[0] run data remove storage anim:runtime got_compile_data.tick
execute unless data storage anim:runtime got_compile_data.graph[0] run data remove storage anim:runtime got_compile_data.addtick
# say CALCULATE##################################


