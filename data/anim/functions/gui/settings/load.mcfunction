scoreboard players operation $_back_menu _anim = $show_menu _anim
scoreboard players set $show_menu _anim 2
scoreboard players set $name_id _anim 0
kill @e[type=armor_stand,tag=anim_menu,tag=!anim_menu_main]
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"Settings","color":"gray","underlined":true}',Tags:["anim_menu","anim_menu0","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"Link:","color":"aqua"}',Tags:["anim_menu","anim_menu1","anim_menu_unsel"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[OFF]","color":"gray"}',Tags:["anim_menu","anim_menu2"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[North]","color":"gray"}',Tags:["anim_menu","anim_menu3"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[East]","color":"gray"}',Tags:["anim_menu","anim_menu4"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[South]","color":"gray"}',Tags:["anim_menu","anim_menu5"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[West]","color":"gray"}',Tags:["anim_menu","anim_menu6"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Follow]","color":"gray"}',Tags:["anim_menu","anim_menu7"]}
summon armor_stand ~ ~ ~ {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Back]","color":"red"}',Tags:["anim_menu","anim_menu8"]}
execute if score $sett_link _anim matches 0 run data merge entity @e[type=armor_stand,tag=anim_menu2,limit=1] {CustomName:'{"text":"[OFF]","color":"green"}'}
execute if score $sett_link _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu3,limit=1] {CustomName:'{"text":"[North]","color":"green"}'}
execute if score $sett_link _anim matches 2 run data merge entity @e[type=armor_stand,tag=anim_menu4,limit=1] {CustomName:'{"text":"[East]","color":"green"}'}
execute if score $sett_link _anim matches 3 run data merge entity @e[type=armor_stand,tag=anim_menu5,limit=1] {CustomName:'{"text":"[South]","color":"green"}'}
execute if score $sett_link _anim matches 4 run data merge entity @e[type=armor_stand,tag=anim_menu6,limit=1] {CustomName:'{"text":"[West]","color":"green"}'}
execute if score $sett_link _anim matches 5 run data merge entity @e[type=armor_stand,tag=anim_menu7,limit=1] {CustomName:'{"text":"[Follow]","color":"green"}'}
