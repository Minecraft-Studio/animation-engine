execute if data storage anim:editor ver run data merge storage anim:editor {ver_update:1b}
data merge storage anim:editor {ver:"v0.8.6a"}
scoreboard objectives add _anim dummy
scoreboard objectives add _anim_ida dummy
scoreboard objectives add _anim_idb dummy
scoreboard players set $page _anim 1
scoreboard players set $sett_link _anim 5
scoreboard players set $sett_def_rotate _anim 1
scoreboard players set $sett_def_move _anim 1
scoreboard players set $sett_bckp _anim 1
execute unless data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been installed! ","color":"green"},{"text":"(","color":"gray"},{"nbt":"ver","storage":"anim:editor","color":"gray"},{"text":")","color":"gray"}]
execute if data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been updated to ","color":"green"},{"nbt":"ver","storage":"anim:editor","color":"aqua"}]
data remove storage anim:editor ver_update