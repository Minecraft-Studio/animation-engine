execute if data storage anim:runtime ver run data merge storage anim:runtime {ver_update:1b}
data merge storage anim:runtime {ver:"v1.0b1"}
scoreboard objectives add _anim dummy
scoreboard objectives add _anim_ida dummy
scoreboard objectives add _anim_idb dummy
scoreboard players set $1 _anim 1
scoreboard players set $2 _anim 2
scoreboard players set $10 _anim 10
scoreboard players set $100 _anim 100
scoreboard players set $1000 _anim 1000
scoreboard players set $chain_loop _anim 1800
execute unless score $max_loop _anim matches 0.. run scoreboard players set $max_loop _anim 50
execute unless data storage anim:runtime ver_update run tellraw @a ["",{"text":"Animation Engine Runtime has been installed! ","color":"green"},{"text":"(","color":"gray"},{"nbt":"ver","storage":"anim:runtime","color":"gray"},{"text":")","color":"gray"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them!","color":"gray"}]
execute if data storage anim:runtime ver_update run tellraw @a ["",{"text":"Animation Engine Runtime has been updated to ","color":"green"},{"nbt":"ver","storage":"anim:runtime","color":"aqua"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them!","color":"gray"}]
data remove storage anim:runtime ver_update