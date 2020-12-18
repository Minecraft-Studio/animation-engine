scoreboard objectives add _anim_compile dummy
scoreboard players set @s _anim_compile 1
data modify entity @s ArmorItems[2].tag.compile_continue.keyframes set from storage anim:runtime keyframes
data modify entity @s ArmorItems[2].tag.compile_continue.search_data set from storage anim:runtime search_data
data modify entity @s ArmorItems[2].tag.compile_continue.compile set from storage anim:runtime compile
execute store result entity @s ArmorItems[2].tag.compile_continue.tick int 1 run scoreboard players get $_comp_tick _anim
execute if score $_search_tick _anim matches 1.. store result entity @s ArmorItems[2].tag.compile_continue.search_tick int 1 run scoreboard players get $_search_tick _anim