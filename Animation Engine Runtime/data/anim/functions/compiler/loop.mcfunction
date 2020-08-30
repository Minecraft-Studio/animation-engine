
execute unless data storage anim:runtime search_data[0] run function anim:compiler/loop/normal
execute if data storage anim:runtime search_data[0] run function anim:compiler/loop/search

#>Set tick if values are set
execute if data storage anim:runtime compile_import.value store result storage anim:runtime compile_import.tick int 1 run scoreboard players get $_comp_tick _anim 
#>If tick set, append it to compile
execute if data storage anim:runtime compile_import.tick run data modify storage anim:runtime compile append from storage anim:runtime compile_import

execute unless data storage anim:runtime search_data[0] run scoreboard players add $_comp_tick _anim 1
scoreboard players add $_comp_loop _anim 1
scoreboard players add $_comp_continue _anim 1
execute if data storage anim:runtime keyframes[0] run scoreboard players set $_comp_continue _anim 0
execute if score $_comp_continue _anim matches 0..1 unless score $_comp_loop _anim > $max_loop _anim run function anim:compiler/loop
execute if score $_comp_continue _anim matches 0..1 if score $_comp_loop _anim > $max_loop _anim run schedule function anim:compiler/loop 1t
execute if score $_comp_continue _anim matches 0..1 if score $_comp_loop _anim > $max_loop _anim run scoreboard players set $_comp_loop _anim 1
