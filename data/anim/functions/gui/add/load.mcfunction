scoreboard players set $show_menu _anim 4
scoreboard players set $name_menu _anim 4
scoreboard players set $name_id _anim 1
execute store result score $_is_done _anim run scoreboard players get $_done _anim
scoreboard players set $_done _anim 0
execute if score $_exists _anim matches 1 run scoreboard players set $_done _anim 1
kill @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_main]
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"Add a new armor stand","color":"gray","underlined":true}',Tags:["anim_menu","anim_menu0","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"Add tag ","color":"gray"},{"text":"anim_add","color":"yellow"},{"text":" to an armor stand you want to insert","color":"gray"}]',Tags:["anim_menu","anim_menu2","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"or don\'t add the tag to create a new armor stand","color":"gray"}',Tags:["anim_menu","anim_menu3","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"Armor Stand name: ","color":"aqua"},{"text":"(check chat)","color":"red"}]',Tags:["anim_menu","anim_menu4","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"Items:","color":"aqua"}',Tags:["anim_menu","anim_menu5","anim_menu_sel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"[Head ","color":"red"},{"text":"none","color":"gray"},{"text":"]","color":"red"}]',Tags:["anim_menu","anim_menu6"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"[Body ","color":"blue"},{"text":"none","color":"gray"},{"text":"]","color":"blue"}]',Tags:["anim_menu","anim_menu7"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"[Right Arm ","color":"dark_purple"},{"text":"none","color":"gray"},{"text":"]","color":"dark_purple"}]',Tags:["anim_menu","anim_menu8"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"[Left Arm ","color":"light_purple"},{"text":"none","color":"gray"},{"text":"]","color":"light_purple"}]',Tags:["anim_menu","anim_menu9"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"[Leggings ","color":"dark_green"},{"text":"none","color":"gray"},{"text":"]","color":"dark_green"}]',Tags:["anim_menu","anim_menu10"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"[Boots ","color":"green"},{"text":"none","color":"gray"},{"text":"]","color":"green"}]',Tags:["anim_menu","anim_menu11"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"inserted armor stand will be teleported","color":"gray","italic":true}',Tags:["anim_menu","anim_menu12"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Cancel]","color":"red"}',Tags:["anim_menu","anim_menu13"]}
execute unless score $_exists _anim matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Finish]","color":"dark_gray"}',Tags:["anim_menu","anim_menu14"]}
execute if score $_exists _anim matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Finish]","color":"green"}',Tags:["anim_menu","anim_menu14"]}
execute unless score $_exists _anim matches 1 as @p[tag=anim_user] at @s run summon armor_stand ^-3 ^ ^3 {Tags:["anim_part","anim_edit","anim_edit_new"],Marker:1b,Invisible:1b}
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_part] if score @s _anim_idb = $_edit_armor_stand _anim if score @s _anim_ida = @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] _anim_ida run tag @s add anim_edit

data remove storage anim:editor name
tellraw @p[tag=anim_user] ["",{"text":"\n\nGive the armor stand a name: ","color":"aqua"},{"text":"click here","underlined":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor name set value "}},{"text":"\n"}]

#data
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu6] at @s run function anim:gui/add/run/hover/reset/1
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu7] at @s run function anim:gui/add/run/hover/reset/2
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu8] at @s run function anim:gui/add/run/hover/reset/3
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu9] at @s run function anim:gui/add/run/hover/reset/4
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu10] at @s run function anim:gui/add/run/hover/reset/5
execute if score $_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_menu11] at @s run function anim:gui/add/run/hover/reset/6

#name
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 1 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[0].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 2 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[1].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 3 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[2].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 4 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[3].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 5 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[4].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 6 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[5].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 7 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[6].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 8 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[7].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 9 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[8].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 10 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[9].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 11 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[10].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 12 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[11].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 13 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[12].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute if score $_exists _anim matches 1 if score $_edit_armor_stand _anim matches 14 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"nbt":"ArmorItems[2].tag.anim.armor_stand[13].name","entity":"@e[type=armor_stand,tag=anim_sel,limit=1]","color":"green"}]'}
execute unless score $_exists _anim matches 1 as @p[tag=anim_user] at @s if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"text":"Armor Stand name: ","color":"aqua"},{"text":"(check chat)","color":"red"}]'}
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu4,limit=1] CustomName set value '["",{"text":"Armor Stand name: ","color":"aqua"},{"text":"Error, please move to a free block","color":"red"}]'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu4,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
scoreboard players reset $_sign_placed _anim
