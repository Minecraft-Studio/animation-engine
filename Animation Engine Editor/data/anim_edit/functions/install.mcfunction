execute if data storage anim:editor ver run data merge storage anim:editor {ver_update:1b}
data merge storage anim:editor {ver:"v1.0a4"}
scoreboard objectives add _anim dummy
scoreboard objectives add _anim_ida dummy
scoreboard objectives add _anim_idb dummy
scoreboard players set $page _anim 1
execute unless score $sett_link _anim matches 0.. run scoreboard players set $sett_link _anim 5
execute unless score $sett_look _anim matches 0.. run scoreboard players set $sett_look _anim 1
execute unless score $sett_def_rotate _anim matches 0.. run scoreboard players set $sett_def_rotate _anim 1
execute unless score $sett_def_move _anim matches 0.. run scoreboard players set $sett_def_move _anim 1
execute unless score $sett_compile _anim matches 0.. run scoreboard players set $sett_compile _anim 10
execute unless score $sett_bckp _anim matches 0.. run scoreboard players set $sett_bckp _anim 1
scoreboard players set $1 _anim 1
scoreboard players set $2 _anim 2
scoreboard players set $100 _anim 100
scoreboard players set $20 _anim 20
execute unless data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been installed! ","color":"green"},{"text":"(","color":"gray"},{"nbt":"ver","storage":"anim:editor","color":"gray"},{"text":")","color":"gray"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them (in Settings)!","color":"gray"}]
execute if data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been updated to ","color":"green"},{"nbt":"ver","storage":"anim:editor","color":"aqua"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them (in Settings)!","color":"gray"}]
data remove storage anim:editor ver_update