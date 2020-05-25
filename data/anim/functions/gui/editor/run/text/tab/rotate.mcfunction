execute if score $_tab _anim matches 1 run function anim:gui/editor/run/text/tab/rotate_1
execute if score $_tab _anim matches 2 run function anim:gui/editor/run/text/tab/rotate_2
execute if score $_tab _anim matches 3 run function anim:gui/editor/run/text/tab/rotate_3
execute if score $_tab _anim matches 4 run function anim:gui/editor/run/text/tab/rotate_4
execute if score $_tab _anim matches 5 run function anim:gui/editor/run/text/tab/rotate_5
execute if score $_tab _anim matches 6 run function anim:gui/editor/run/text/tab/rotate_6
execute unless score $_tab _anim matches 1..6 run function anim:gui/editor/run/text/tab/rotate_1

execute if score $_set_keyframe _anim matches 1 as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run tag @s add anim_editor1
execute if score $_set_keyframe _anim matches 2 as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run tag @s add anim_editor2
execute if score $_set_keyframe _anim matches 3 as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run tag @s add anim_editor3
execute if score $_set_keyframe _anim matches 4 as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run tag @s add anim_editor4
execute if score $_set_keyframe _anim matches 5 as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run tag @s add anim_editor5
execute if score $_set_keyframe _anim matches 6 as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run tag @s add anim_editor6
execute if score $_set_keyframe _anim matches 1.. as @e[type=armor_stand,tag=anim_editor_sel,tag=anim_menu,tag=anim_editor0] run function anim:gui/editor/run/panel/set_keyframe

execute as @e[type=armor_stand,tag=anim_part] unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0f,0f,0.0001f]
execute as @e[type=armor_stand,tag=anim_part] unless data entity @s Pose.Body run data modify entity @s Pose.Body set value [0f,0f,0.0001f]
execute as @e[type=armor_stand,tag=anim_part] unless data entity @s Pose.LeftLeg run data modify entity @s Pose.LeftLeg set value [0f,0f,0.0001f]
execute as @e[type=armor_stand,tag=anim_part] unless data entity @s Pose.RightLeg run data modify entity @s Pose.RightLeg set value [0f,0f,0.0001f]
execute as @e[type=armor_stand,tag=anim_part] unless data entity @s Pose.LeftArm run data modify entity @s Pose.LeftArm set value [0f,0f,0.0001f]
execute as @e[type=armor_stand,tag=anim_part] unless data entity @s Pose.RightArm run data modify entity @s Pose.RightArm set value [0f,0f,0.0001f]
execute if score $_sel_row _anim matches 1 as @e[type=armor_stand,tag=anim_part,scores={_anim_idb=1}] if score @s _anim_ida = @e[type=armor_stand,tag=anim_main,tag=anim_sel,limit=1] _anim_ida run data modify entity @s Pose.Head[0] set from storage anim:editor current_keyframe.rotate.head.x