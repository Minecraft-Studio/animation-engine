#import data into the editor (calls in founded)
scoreboard objectives add _anim_edit_color dummy
execute if data storage anim:editor search[0].extra.head run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor search[0].extra.body run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor search[0].extra.r_arm run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor search[0].extra.l_arm run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor search[0].extra.legg run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor search[0].extra.boots run scoreboard players set @s _anim_edit_color 14
execute if data storage anim:editor search[0].rotate.head.x run scoreboard players set @s _anim_edit_color 1
execute if data storage anim:editor search[0].rotate.head.y run scoreboard players set @s _anim_edit_color 1
execute if data storage anim:editor search[0].rotate.head.z run scoreboard players set @s _anim_edit_color 1
execute if data storage anim:editor search[0].rotate.body.x run scoreboard players set @s _anim_edit_color 2
execute if data storage anim:editor search[0].rotate.body.y run scoreboard players set @s _anim_edit_color 2
execute if data storage anim:editor search[0].rotate.body.z run scoreboard players set @s _anim_edit_color 2
execute if data storage anim:editor search[0].rotate.r_arm.x run scoreboard players set @s _anim_edit_color 3
execute if data storage anim:editor search[0].rotate.r_arm.y run scoreboard players set @s _anim_edit_color 3
execute if data storage anim:editor search[0].rotate.r_arm.z run scoreboard players set @s _anim_edit_color 3
execute if data storage anim:editor search[0].rotate.l_arm.x run scoreboard players set @s _anim_edit_color 4
execute if data storage anim:editor search[0].rotate.l_arm.y run scoreboard players set @s _anim_edit_color 4
execute if data storage anim:editor search[0].rotate.l_arm.z run scoreboard players set @s _anim_edit_color 4
execute if data storage anim:editor search[0].rotate.r_leg.x run scoreboard players set @s _anim_edit_color 5
execute if data storage anim:editor search[0].rotate.r_leg.y run scoreboard players set @s _anim_edit_color 5
execute if data storage anim:editor search[0].rotate.r_leg.z run scoreboard players set @s _anim_edit_color 5
execute if data storage anim:editor search[0].rotate.l_leg.x run scoreboard players set @s _anim_edit_color 6
execute if data storage anim:editor search[0].rotate.l_leg.y run scoreboard players set @s _anim_edit_color 6
execute if data storage anim:editor search[0].rotate.l_leg.z run scoreboard players set @s _anim_edit_color 6
execute if data storage anim:editor search[0].position.x run scoreboard players set @s _anim_edit_color 7
execute if data storage anim:editor search[0].position.y run scoreboard players set @s _anim_edit_color 7
execute if data storage anim:editor search[0].position.z run scoreboard players set @s _anim_edit_color 7
execute if data storage anim:editor search[0].rotate.head.x if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 8
execute if data storage anim:editor search[0].rotate.head.y if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 8
execute if data storage anim:editor search[0].rotate.head.z if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 8
execute if data storage anim:editor search[0].rotate.body.x if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 9
execute if data storage anim:editor search[0].rotate.body.y if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 9
execute if data storage anim:editor search[0].rotate.body.z if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 9
execute if data storage anim:editor search[0].rotate.r_arm.x if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 10
execute if data storage anim:editor search[0].rotate.r_arm.y if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 10
execute if data storage anim:editor search[0].rotate.r_arm.z if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 10
execute if data storage anim:editor search[0].rotate.l_arm.x if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 11
execute if data storage anim:editor search[0].rotate.l_arm.y if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 11
execute if data storage anim:editor search[0].rotate.l_arm.z if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 11
execute if data storage anim:editor search[0].rotate.r_leg.x if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 12
execute if data storage anim:editor search[0].rotate.r_leg.y if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 12
execute if data storage anim:editor search[0].rotate.r_leg.z if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 12
execute if data storage anim:editor search[0].rotate.l_leg.x if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 13
execute if data storage anim:editor search[0].rotate.l_leg.y if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 13
execute if data storage anim:editor search[0].rotate.l_leg.z if data storage anim:editor search[0].position run scoreboard players set @s _anim_edit_color 13
execute if score @s _anim_edit_color matches 1 run tag @s add anim_editor1
execute if score @s _anim_edit_color matches 2 run tag @s add anim_editor2
execute if score @s _anim_edit_color matches 3 run tag @s add anim_editor3
execute if score @s _anim_edit_color matches 4 run tag @s add anim_editor4
execute if score @s _anim_edit_color matches 5 run tag @s add anim_editor5
execute if score @s _anim_edit_color matches 6 run tag @s add anim_editor6
execute if score @s _anim_edit_color matches 7 run tag @s add anim_editor7
execute if score @s _anim_edit_color matches 8 run tag @s add anim_editor8
execute if score @s _anim_edit_color matches 9 run tag @s add anim_editor9
execute if score @s _anim_edit_color matches 10 run tag @s add anim_editor10
execute if score @s _anim_edit_color matches 11 run tag @s add anim_editor11
execute if score @s _anim_edit_color matches 12 run tag @s add anim_editor12
execute if score @s _anim_edit_color matches 13 run tag @s add anim_editor13
execute if score @s _anim_edit_color matches 14 run tag @s add anim_editor14
tag @s remove anim_editor0
scoreboard objectives remove _anim_edit_color
