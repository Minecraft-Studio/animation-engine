scoreboard players set $show_menu _anim 1
kill @e[type=armor_stand,tag=anim_menu]
kill @e[type=slime,tag=anim_selector]
execute positioned ~ ~1 ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:0b,Tags:["anim_menu","anim_menu_unsel","anim_menu_main"]}
execute positioned ~ ~ ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"What would you like to do?","color":"aqua"}',Tags:["anim_menu","anim_menu0","anim_menu_unsel"]}
execute positioned ~ ~ ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Settings]","color":"gray"}',Tags:["anim_menu","anim_menu1"]}
execute positioned ~ ~ ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Create a new model]","color":"green"}',Tags:["anim_menu","anim_menu2"]}
execute positioned ~ ~ ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Select a existing model]","color":"yellow"}',Tags:["anim_menu","anim_menu3"]}
execute positioned ~ ~ ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'{"text":"[Close Menu]","color":"red"}',Tags:["anim_menu","anim_menu4"]}
execute positioned ~ ~ ~ run summon armor_stand ^ ^ ^3 {Marker:1b,Small:1b,Invisible:1b,CustomNameVisible:1b,CustomName:'["",{"text":"Animation Engine","color":"gray","underlined":true},{"text":" v0.8.5a","color":"aqua"}]',Tags:["anim_menu","anim_menu5","anim_menu_unsel"]}
summon slime ^ ^ ^1 {NoAI:1b,Silent:1b,Size:0,Tags:["anim_selector"],PersistenceRequired:1b,DeathLootTable:"none",Health:50f,Attributes:[{Name:"generic.max_health",Base:50.0}]}
effect give @e[type=slime,tag=anim_selector] invisibility 999999 255 true
tag @s add anim_user
