scoreboard players set $show_menu _anim 3
scoreboard players set $name_id _anim 0
scoreboard players reset $_model_type _anim
scoreboard players set $_page _anim 0
scoreboard players reset $_done _anim
scoreboard players reset $_sel_anim _anim
kill @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_main]
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"Create a new model","color":"gray","underlined":true}',Tags:["anim_menu","anim_menu0","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"Model name: ","color":"aqua"},{"text":"(check chat)","color":"red"}]',Tags:["anim_menu","anim_menu1","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Settings]","color":"gray"}',Tags:["anim_menu","anim_menu2"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"List of connected parts:","color":"aqua"}',Tags:["anim_menu","anim_menu3","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu4","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu5","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu8","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu9","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu10","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu11","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"","color":"gray"}',Tags:["anim_menu","anim_menu12","anim_menu_list"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Next]","color":"dark_gray"}',Tags:["anim_menu","anim_menu6"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Back]","color":"red"}',Tags:["anim_menu","anim_menu7"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[>]","color":"yellow"}',Tags:["anim_menu","anim_menu13"]}
data remove storage anim:editor name
data remove storage anim:editor save_name
scoreboard players set $name_menu _anim 3
scoreboard players set $name_id _anim 1
execute unless entity @e[type=armor_stand,tag=anim_main,tag=anim_sel] run scoreboard players add $id _anim 1
execute if entity @e[type=armor_stand,tag=anim_main,tag=anim_sel] run scoreboard players set $_done _anim 1
tellraw @p[tag=anim_user] ["",{"text":"\n\nGive the model a name: ","color":"aqua"},{"text":"click here","underlined":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor name set value "}},{"text":"\n"}]
execute as @p[tag=anim_user] at @s unless entity @e[type=armor_stand,tag=anim_main,tag=anim_sel] run summon armor_stand ^-2 ^ ^3 {CustomName:'{"text":"New Model"}',Marker:1b,Invisible:1b,Silent:1b,Tags:["anim_main","anim_sel","anim_new"],ArmorItems:[{},{},{id:"minecraft:stone",Count:1b,tag:{anim:{armor_stand:[{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b},{name:"none",set:0b}],animations:[{id:0b},{id:1b},{id:2b},{id:3b},{id:4b},{id:5b},{id:6b},{id:7b},{id:8b},{id:9b},{id:10b},{id:11b},{id:12b},{id:13b}]}}},{}]}
execute as @p[tag=anim_user] at @s if entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,tag=anim_new] positioned ^-3 ^ ^3 run spreadplayers ~ ~ 0 1 false @e[type=armor_stand,tag=anim_sel,tag=anim_main,tag=anim_new]
scoreboard players operation @e[type=armor_stand,tag=anim_sel,tag=anim_main,tag=anim_new] _anim_ida = $id _anim

#load the list
function anim:gui/new/run/change_list1

execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @p[tag=anim_user] at @s if data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.name if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Model name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.name","entity":"@e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1]","color":"green"}]'}
execute as @p[tag=anim_user] at @s if data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.name run data modify entity @e[type=armor_stand,tag=anim_menu1,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players reset $_sign_placed _anim
