execute if data storage anim:editor ver run data merge storage anim:editor {ver_update:1b}
data merge storage anim:editor {ver:"v1.0a12"}
scoreboard objectives add _anim dummy
scoreboard objectives add _anim_ida dummy
scoreboard objectives add _anim_idb dummy
scoreboard players set $page _anim 1
# execute unless score $sett_link _anim matches 0.. run scoreboard players set $sett_link _anim 5
# execute unless score $sett_look _anim matches 0.. run scoreboard players set $sett_look _anim 1
execute unless score $sett_def_rotate _anim matches 0.. run scoreboard players set $sett_def_rotate _anim 1
execute unless score $sett_def_move _anim matches 0.. run scoreboard players set $sett_def_move _anim 1
execute unless score $sett_compile _anim matches 0.. run scoreboard players set $sett_compile _anim 10
execute unless score $sett_bckp _anim matches 0.. run scoreboard players set $sett_bckp _anim 1
execute unless score $sett_gamerule _anim matches 0.. run scoreboard players set $sett_gamerule _anim 1
data modify storage anim:editor value_edit_shortcuts set value {remove3:[4000,4,0],remove2:[1000,1,0],remove1:[250,0,2,5],add1:[250,0,2,5],add2:[1000,1,0],add3:[4000,4,0]}
data modify storage anim:editor console set value []
#>only used by editor (for Multiplayer support), remove on uninstall
#FIX unistaller
scoreboard objectives add _anim_menu dummy
scoreboard objectives add _anim_page dummy
scoreboard objectives add _anim_row_page dummy
scoreboard objectives add _anim_menu dummy
scoreboard objectives add _anim_id_player dummy
scoreboard objectives add _anim_ida_select dummy
scoreboard objectives add _anim_idb_select dummy
#>End of objectives used by editor only
scoreboard players set $2 _anim 2
scoreboard players set $7 _anim 7
scoreboard players set $10 _anim 10
scoreboard players set $100 _anim 100
scoreboard players set $1000 _anim 1000
scoreboard players set $20 _anim 20
execute unless data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been installed! ","color":"green"},{"text":"(","color":"gray"},{"nbt":"ver","storage":"anim:editor","color":"gray"},{"text":")","color":"gray"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them (in Settings)!","color":"gray"}]
execute if data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been updated to ","color":"green"},{"nbt":"ver","storage":"anim:editor","color":"aqua"},{"text":"\nRemember! Animation Engine is still in alpha, bugs will happen, please report them (in Settings)!","color":"gray"}]
data remove storage anim:editor ver_update