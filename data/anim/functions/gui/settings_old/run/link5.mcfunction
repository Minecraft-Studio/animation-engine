scoreboard players set $sett_link _anim 5
data merge entity @e[type=armor_stand,tag=anim_menu2,limit=1] {CustomName:'{"text":"[OFF]","color":"gray"}'}
data merge entity @e[type=armor_stand,tag=anim_menu3,limit=1] {CustomName:'{"text":"[North]","color":"gray"}'}
data merge entity @e[type=armor_stand,tag=anim_menu4,limit=1] {CustomName:'{"text":"[East]","color":"gray"}'}
data merge entity @e[type=armor_stand,tag=anim_menu5,limit=1] {CustomName:'{"text":"[South]","color":"gray"}'}
data merge entity @e[type=armor_stand,tag=anim_menu6,limit=1] {CustomName:'{"text":"[West]","color":"gray"}'}
data merge entity @e[type=armor_stand,tag=anim_menu7,limit=1] {CustomName:'{"text":"[Follow]","color":"gray"}'}
execute if score $sett_link _anim matches 0 run data merge entity @e[type=armor_stand,tag=anim_menu2,limit=1] {CustomName:'{"text":"[OFF]","color":"green"}'}
execute if score $sett_link _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu3,limit=1] {CustomName:'{"text":"[North]","color":"green"}'}
execute if score $sett_link _anim matches 2 run data merge entity @e[type=armor_stand,tag=anim_menu4,limit=1] {CustomName:'{"text":"[East]","color":"green"}'}
execute if score $sett_link _anim matches 3 run data merge entity @e[type=armor_stand,tag=anim_menu5,limit=1] {CustomName:'{"text":"[South]","color":"green"}'}
execute if score $sett_link _anim matches 4 run data merge entity @e[type=armor_stand,tag=anim_menu6,limit=1] {CustomName:'{"text":"[West]","color":"green"}'}
execute if score $sett_link _anim matches 5 run data merge entity @e[type=armor_stand,tag=anim_menu7,limit=1] {CustomName:'{"text":"[Follow]","color":"green"}'}
