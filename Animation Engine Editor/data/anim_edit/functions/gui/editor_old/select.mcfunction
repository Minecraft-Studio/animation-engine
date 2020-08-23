execute if entity @s[tag=anim_editor0] run data merge entity @s {CustomName:'{"text":"/","color":"white"}'}
execute if entity @s[tag=anim_editor1,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffa2a2"}'}
execute if entity @s[tag=anim_editor2,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#a2a2ff"}'}
execute if entity @s[tag=anim_editor3,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#d073d0"}'}
execute if entity @s[tag=anim_editor4,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffa2ff"}'}
execute if entity @s[tag=anim_editor5,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#a2ffa2"}'}
execute if entity @s[tag=anim_editor6,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#73d073"}'}
execute if entity @s[tag=anim_editor7,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffffaa"}'}
execute if entity @s[tag=anim_editor8,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffd4aa"}'}
execute if entity @s[tag=anim_editor9,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#c7c7e3"}'}
execute if entity @s[tag=anim_editor10,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#bfea95"}'}
execute if entity @s[tag=anim_editor11,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#d4ffaa"}'}
execute if entity @s[tag=anim_editor12,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#eac0c0"}'}
execute if entity @s[tag=anim_editor13,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffd5d5"}'}
execute if entity @s[tag=anim_editor14,tag=!anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"#ffd580"}'}
execute if entity @s[tag=!anim_editor0,tag=anim_editor_sel] run data merge entity @s {CustomName:'{"text":"♦","color":"white"}'}
execute if entity @s[tag=anim_menu1] as @e[type=armor_stand,tag=anim_editor_r1,tag=anim_menu] run function anim_edit:gui/editor/select
execute if entity @s[tag=anim_menu2] as @e[type=armor_stand,tag=anim_editor_r2,tag=anim_menu] run function anim_edit:gui/editor/select
execute if entity @s[tag=anim_menu3] as @e[type=armor_stand,tag=anim_editor_r3,tag=anim_menu] run function anim_edit:gui/editor/select
execute if entity @s[tag=anim_menu4] as @e[type=armor_stand,tag=anim_editor_r4,tag=anim_menu] run function anim_edit:gui/editor/select
execute if entity @s[tag=anim_menu5] as @e[type=armor_stand,tag=anim_editor_r5,tag=anim_menu] run function anim_edit:gui/editor/select
execute if entity @s[tag=anim_menu6] as @e[type=armor_stand,tag=anim_editor_r6,tag=anim_menu] run function anim_edit:gui/editor/select
execute if entity @s[tag=anim_menu7] as @e[type=armor_stand,tag=anim_editor_r7,tag=anim_menu] run function anim_edit:gui/editor/select
execute unless score $editor_play _anim matches 1 if entity @s[tag=anim_menu80] run data merge entity @s {CustomName:'{"text":"▶","color":"white"}'}
execute unless score $editor_play _anim matches 1 if entity @s[tag=anim_menu94] run data merge entity @s {CustomName:'{"text":"|▶","color":"white"}'}
execute if score $editor_play _anim matches 1 if entity @s[tag=anim_menu80] run data merge entity @s {CustomName:'{"text":"⏸","color":"white"}'}
execute if score $editor_play _anim matches 2 if entity @s[tag=anim_menu80] run data merge entity @s {CustomName:'{"text":"▶","color":"white"}'}
execute if score $editor_play _anim matches 1..2 if entity @s[tag=anim_menu94] run data merge entity @s {CustomName:'{"text":"■","color":"white"}'}
execute if entity @s[tag=anim_menu81] run data merge entity @s {CustomName:'{"text":"<","color":"white"}'}
execute if entity @s[tag=anim_menu82] run data merge entity @s {CustomName:'{"text":">","color":"white"}'}
execute if entity @s[tag=anim_menu83] run data merge entity @s {CustomName:'{"text":"<<","color":"white"}'}
execute if entity @s[tag=anim_menu84] run data merge entity @s {CustomName:'{"text":">>","color":"white"}'}
execute if entity @s[tag=anim_menu85] run data merge entity @s {CustomName:'{"text":"|<","color":"white"}'}
execute if entity @s[tag=anim_menu88] run data merge entity @s {CustomName:'{"text":">>>","color":"white"}'}
execute if entity @s[tag=anim_menu87] run data merge entity @s {CustomName:'{"text":"↓","color":"white"}'}
execute if score $anim_page _anim matches 2.. if entity @s[tag=anim_menu93] run data merge entity @s {CustomName:'{"text":"↑","color":"white"}'}
execute if entity @s[tag=anim_menu86] run function anim_edit:gui/editor/run/refresh_page
execute if entity @s[tag=anim_menu_1] run data merge entity @s {CustomName:'{"text":"[Settings]","color":"white"}'}
execute if entity @s[tag=anim_menu90] run data merge entity @s {CustomName:'{"text":"[Close]","color":"white"}'}
execute if entity @s[tag=anim_menu91] run data merge entity @s {CustomName:'{"text":"[Compile]","color":"white"}'}
execute if entity @s[tag=anim_menu92] run data merge entity @s {CustomName:'{"text":"[Menu]","color":"white"}'}
