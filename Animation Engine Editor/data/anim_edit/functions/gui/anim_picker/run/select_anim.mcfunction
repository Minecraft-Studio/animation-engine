scoreboard players set $name_id _anim 0
scoreboard players reset $_confirm_delete _anim
execute if score $_sel_anim _anim matches 1 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[0].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 2 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[1].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 3 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[2].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 4 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[3].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 5 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[4].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 6 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[5].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 7 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[6].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 8 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[7].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 9 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[8].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 10 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[9].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 11 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[10].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 12 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[11].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 13 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[12].name run scoreboard players set $name_id _anim 1
execute if score $_sel_anim _anim matches 14 unless data entity @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] ArmorItems[2].tag.anim.animations[13].name run scoreboard players set $name_id _anim 1
execute if score $name_id _anim matches 1 run tellraw @p[tag=anim_user] ["",{"text":"Create a new animation","color":"gray","underlined":true},{"text":"\n\nGive the animation a name: ","color":"aqua"},{"text":"click here","underlined":true,"color":"gray","clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor name set value "}},{"text":"\n"}]

execute unless score $name_id _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu6,limit=1] {CustomName:'{"text":"[Open]","color":"yellow"}'}
execute unless score $name_id _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu14,limit=1] {CustomName:'{"text":"[Edit]","color":"gray"}'}
execute unless score $name_id _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu15,limit=1] {CustomName:'{"text":"[Delete]","color":"red"}'}
execute if score $name_id _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu6,limit=1] {CustomName:'{"text":"[Open]","color":"dark_gray"}'}
execute if score $name_id _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu14,limit=1] {CustomName:'{"text":"[Edit]","color":"dark_gray"}'}
execute if score $name_id _anim matches 1 run data merge entity @e[type=armor_stand,tag=anim_menu,tag=anim_menu15,limit=1] {CustomName:'{"text":"[Delete]","color":"dark_gray"}'}
