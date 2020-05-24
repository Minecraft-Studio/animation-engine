tellraw @p[tag=anim_user] ["",{"selector":"@s","color":"green"},{"text":" has been inserted and the ","color":"aqua"},{"selector":"@e[type=armor_stand,tag=anim_edit]","color":"yellow"},{"text":" is discarded","color":"aqua"}]
execute unless data entity @s ArmorItems[3].id run data modify entity @s ArmorItems[3] set from entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] ArmorItems[3]
execute unless data entity @s ArmorItems[2].id run data modify entity @s ArmorItems[2] set from entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] ArmorItems[2]
execute unless data entity @s ArmorItems[1].id run data modify entity @s ArmorItems[1] set from entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] ArmorItems[1]
execute unless data entity @s ArmorItems[0].id run data modify entity @s ArmorItems[0] set from entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] ArmorItems[0]
execute unless data entity @s HandItems[1].id run data modify entity @s HandItems[1] set from entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] HandItems[1]
execute unless data entity @s HandItems[0].id run data modify entity @s HandItems[0] set from entity @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] HandItems[0]
scoreboard players operation @s _anim_idb = @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] _anim_idb
scoreboard players operation @s _anim_ida = @e[type=armor_stand,tag=anim_edit,tag=anim_part,limit=1] _anim_ida

execute if entity @e[type=armor_stand,tag=anim_edit,tag=anim_edit_new] run kill @e[type=armor_stand,tag=anim_edit,tag=anim_edit_new]
tag @e[type=armor_stand,tag=anim_edit,tag=anim_part] remove anim_part
tag @e[type=armor_stand,tag=anim_edit,tag=anim_part] remove anim_edit
tag @s add anim_edit
tag @s add anim_part
tag @s remove anim_add