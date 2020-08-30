#
#>Compiles keyframe using graph data
# Input:    anim:runtime compile_graph (graph data wanted to apply to keyframe);
#           anim:runtime keyframes (keyframes to compile);
# Output:   anim:runtime compile (compiled data);
execute store result score $max_loop _anim run gamerule maxCommandChainLength 
scoreboard players operation $max_loop _anim /= $chain_loop _anim
scoreboard players reset $_search_tick _anim
scoreboard players set $_comp_loop _anim 1
scoreboard players set $_comp_tick _anim 1
data modify storage anim:runtime compile_data set value []
data modify storage anim:runtime search_data set value []
data modify storage anim:runtime compile set value []

function anim:compiler/loop