execute if entity @s[tag=anim_editor0] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"/","color":"gray"}'}
execute if entity @s[tag=anim_editor1] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"red"}'}
execute if entity @s[tag=anim_editor2] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"blue"}'}
execute if entity @s[tag=anim_editor3] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"dark_purple"}'}
execute if entity @s[tag=anim_editor4] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"light_purple"}'}
execute if entity @s[tag=anim_editor5] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"dark_green"}'}
execute if entity @s[tag=anim_editor6] unless entity @s[tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"light_green"}'}
execute if entity @s[tag=anim_menu1] as @e[type=armor_stand,tag=anim_editor_r1,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu2] as @e[type=armor_stand,tag=anim_editor_r2,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu3] as @e[type=armor_stand,tag=anim_editor_r3,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu4] as @e[type=armor_stand,tag=anim_editor_r4,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu5] as @e[type=armor_stand,tag=anim_editor_r5,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu6] as @e[type=armor_stand,tag=anim_editor_r6,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu7] as @e[type=armor_stand,tag=anim_editor_r7,tag=anim_menu] run function anim:gui/editor/reset
execute if entity @s[tag=anim_menu80] run data merge entity @s {CustomName:'{"text":"▶","color":"gray"}'}
execute if entity @s[tag=anim_menu81] run data merge entity @s {CustomName:'{"text":"<","color":"yellow"}'}
execute if entity @s[tag=anim_menu82] run data merge entity @s {CustomName:'{"text":">","color":"yellow"}'}
execute if entity @s[tag=anim_menu83] run data merge entity @s {CustomName:'{"text":"<<","color":"#ffc72e"}'}
execute if entity @s[tag=anim_menu84] run data merge entity @s {CustomName:'{"text":">>","color":"#ffc72e"}'}
execute if entity @s[tag=anim_menu85] run data merge entity @s {CustomName:'{"text":"|<","color":"#ffb900"}'}
execute if entity @s[tag=anim_menu88] run data merge entity @s {CustomName:'{"text":">>>","color":"#ffb900"}'}
execute if entity @s[tag=anim_menu86] run tag @s remove anim_sel_menu
execute if entity @s[tag=anim_menu86] run function anim:gui/editor/run/refresh_page
execute if entity @s[tag=anim_menu89] run data merge entity @s {CustomName:'{"text":"[Delete]","color":"red"}'}
execute if entity @s[tag=anim_menu90] run data merge entity @s {CustomName:'{"text":"[Save & Close]","color":"green"}'}
execute if entity @s[tag=anim_menu91] run data merge entity @s {CustomName:'{"text":"[Compile]","color":"yellow"}'}
execute if entity @s[tag=anim_menu92] run data merge entity @s {CustomName:'{"text":"[Show Menu]","color":"blue"}'}