#
#>Compiles keyframe using graph data
# Input:    anim:runtime keyframes (keyframes to compile);
#           anim:runtime graphs (graphs to use);
# Output:   anim:runtime compile (compiled data);
execute store result score $max_loop _anim run gamerule maxCommandChainLength 
scoreboard players operation $max_loop _anim /= $chain_loop _anim
scoreboard players reset $_search_tick _anim
scoreboard players set $_comp_loop _anim 1
scoreboard players set $_comp_tick _anim 1
data modify storage anim:runtime compile_data set value []
data modify storage anim:runtime search_data set value []
data modify storage anim:runtime compile set value []

execute if data entity @s ArmorItems[2].tag.anim run data modify storage anim:runtime keyframes set from entity @s ArmorItems[2].tag.anim
function anim:compiler/loop