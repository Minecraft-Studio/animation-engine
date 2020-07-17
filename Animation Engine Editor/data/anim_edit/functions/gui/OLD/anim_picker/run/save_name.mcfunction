execute if score $_sel_anim _anim matches 1 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[0].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 2 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[1].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 3 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[2].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 4 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[3].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 5 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[4].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 6 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[5].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 7 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[6].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 8 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[7].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 9 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[8].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 10 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[9].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 11 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[10].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 12 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[11].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 13 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[12].name set from storage anim:editor name
execute if score $_sel_anim _anim matches 14 run data modify entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[13].name set from storage anim:editor name
data remove storage anim:editor name
function anim_edit:gui/anim_picker/run/refresh_list
scoreboard players set $name_id _anim 0
data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu6,limit=1] {CustomName:'{"text":"[Open]","color":"yellow"}'}
data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu14,limit=1] {CustomName:'{"text":"[Edit]","color":"gray"}'}
data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu15,limit=1] {CustomName:'{"text":"[Delete]","color":"red"}'}