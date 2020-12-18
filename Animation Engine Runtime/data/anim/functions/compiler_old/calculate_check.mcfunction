#
#>Checks if compile_data[{id}].tick = $_comp_tick and if true, runs calculate
execute store result score $_got_comp_tick _anim run data get storage anim:runtime got_compile_data.tick
# tellraw @p {"score":{"name":"$_got_comp_tick","objective": "_anim"},"color":"aqua"}
# tellraw @p {"score":{"name":"$_comp_tick","objective": "_anim"},"color":"dark_aqua"}
execute if score $_got_comp_tick _anim = $_comp_tick _anim run function anim:compiler/calculate