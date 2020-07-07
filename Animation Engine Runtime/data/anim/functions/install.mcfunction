execute if data storage anim:runtime ver run data merge storage anim:runtime {ver_update:1b}
data merge storage anim:runtime {ver:"v0.9.1a"}
scoreboard objectives add _anim dummy
scoreboard objectives add _anim_ida dummy
scoreboard objectives add _anim_idb dummy
scoreboard players set $2 _anim 2
execute unless data storage anim:runtime ver_update run tellraw @a ["",{"text":"Animation Engine Runtime has been installed! ","color":"green"},{"text":"(","color":"gray"},{"nbt":"ver","storage":"anim:runtime","color":"gray"},{"text":")","color":"gray"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them!","color":"gray"}]
execute if data storage anim:runtime ver_update run tellraw @a ["",{"text":"Animation Engine Runtime has been updated to ","color":"green"},{"nbt":"ver","storage":"anim:runtime","color":"aqua"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them!","color":"gray"}]
data remove storage anim:runtime ver_update