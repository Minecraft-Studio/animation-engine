execute if entity @s[tag=anim_editor0] run data merge entity @s {CustomName:'{"text":"/","color":"white"}'}
execute if entity @s[tag=anim_editor1,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffa2a2"}'}
execute if entity @s[tag=anim_editor2,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#a2a2ff"}'}
execute if entity @s[tag=anim_editor3,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffa2ff"}'}
execute if entity @s[tag=anim_editor4,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#d073d0"}'}
execute if entity @s[tag=anim_editor5,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#a2ffa2"}'}
execute if entity @s[tag=anim_editor6,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#73d073"}'}
execute if entity @s[tag=anim_editor7,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#FFFFAA"}'}
execute if entity @s[tag=anim_editor8,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#FFD4AA"}'}
execute if entity @s[tag=anim_editor9,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#C7C7E3"}'}
execute if entity @s[tag=anim_editor10,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#BFEA95"}'}
execute if entity @s[tag=anim_editor11,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#D4FFAA"}'}
execute if entity @s[tag=anim_editor12,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#EAC0C0"}'}
execute if entity @s[tag=anim_editor13,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#FFD5D5"}'}
execute if entity @s[tag=anim_editor14,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#FFD580"}'}
execute if entity @s[tag=!anim_editor0,tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"white"}'}
execute if entity @s[tag=anim_menu1] as @e[type=armor_stand,tag=anim_editor_r1,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu2] as @e[type=armor_stand,tag=anim_editor_r2,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu3] as @e[type=armor_stand,tag=anim_editor_r3,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu4] as @e[type=armor_stand,tag=anim_editor_r4,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu5] as @e[type=armor_stand,tag=anim_editor_r5,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu6] as @e[type=armor_stand,tag=anim_editor_r6,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu7] as @e[type=armor_stand,tag=anim_editor_r7,tag=anim_menu] run function anim:gui/editor/select
execute if entity @s[tag=anim_menu80] run data merge entity @s {CustomName:'{"text":"▶","color":"white"}'}
execute if entity @s[tag=anim_menu81] run data merge entity @s {CustomName:'{"text":"<","color":"white"}'}
execute if entity @s[tag=anim_menu82] run data merge entity @s {CustomName:'{"text":">","color":"white"}'}
execute if entity @s[tag=anim_menu83] run data merge entity @s {CustomName:'{"text":"<<","color":"white"}'}
execute if entity @s[tag=anim_menu84] run data merge entity @s {CustomName:'{"text":">>","color":"white"}'}
execute if entity @s[tag=anim_menu85] run data merge entity @s {CustomName:'{"text":"|<","color":"white"}'}
execute if entity @s[tag=anim_menu88] run data merge entity @s {CustomName:'{"text":">>>","color":"white"}'}
execute if entity @s[tag=anim_menu86] run function anim:gui/editor/run/refresh_page
execute if entity @s[tag=anim_menu_1] run data merge entity @s {CustomName:'{"text":"[Settings]","color":"white"}'}
execute if entity @s[tag=anim_menu89] run data merge entity @s {CustomName:'{"text":"[Delete]","color":"white"}'}
execute if entity @s[tag=anim_menu90] run data merge entity @s {CustomName:'{"text":"[Close]","color":"white"}'}
execute if entity @s[tag=anim_menu91] run data merge entity @s {CustomName:'{"text":"[Compile]","color":"white"}'}
execute if entity @s[tag=anim_menu92] run data merge entity @s {CustomName:'{"text":"[Show Menu]","color":"white"}'}
execute if entity @s[tag=anim_menu93] run data merge entity @s {CustomName:'{"text":"[Copy]","color":"white"}'}
execute if entity @s[tag=anim_menu94] run data merge entity @s {CustomName:'{"text":"[Paste]","color":"white"}'}
