data modify storage anim:editor anim_prev_key set value {head:{x:0f,y:0f,z:0f},body:{x:0f,y:0f,z:0f},r_arm:{x:0f,y:0f,z:0f},l_arm:{x:0f,y:0f,z:0f},r_leg:{x:0f,y:0f,z:0f},l_leg:{x:0f,y:0f,z:0f},rotation:{x:0f,y:0f},pos:{x:0d,y:0d,z:0d},}
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.head.x set from entity @s Pose.Head[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.head.y set from entity @s Pose.Head[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.head.z set from entity @s Pose.Head[2]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.body.x set from entity @s Pose.Body[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.body.y set from entity @s Pose.Body[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.body.z set from entity @s Pose.Body[2]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.l_arm.x set from entity @s Pose.LeftArm[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.l_arm.y set from entity @s Pose.LeftArm[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.l_arm.z set from entity @s Pose.LeftArm[2]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.r_arm.x set from entity @s Pose.RightArm[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.r_arm.y set from entity @s Pose.RightArm[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.r_arm.z set from entity @s Pose.RightArm[2]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.l_leg.x set from entity @s Pose.LeftLeg[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.l_leg.y set from entity @s Pose.LeftLeg[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.l_leg.z set from entity @s Pose.LeftLeg[2]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.r_leg.x set from entity @s Pose.RightLeg[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.r_leg.y set from entity @s Pose.RightLeg[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.r_leg.z set from entity @s Pose.RightLeg[2]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.rotation.x set from entity @s Rotation[0]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run data modify storage anim:editor anim_prev_key.rotation.y set from entity @s Rotation[1]
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida store result storage anim:editor anim_prev_key.pos.x double 0.001 run scoreboard players get @s _anim_px_value 
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida store result storage anim:editor anim_prev_key.pos.y double 0.001 run scoreboard players get @s _anim_py_value 
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida store result storage anim:editor anim_prev_key.pos.z double 0.001 run scoreboard players get @s _anim_pz_value 
execute unless score $_api_endcomp _anim matches 4 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run function anim:end_animation
scoreboard players reset $_fast_tick _anim
scoreboard players reset $_fast_time_left _anim
scoreboard players reset $_fast_loop _anim
bossbar remove _anim_prgbar_fast
execute if score $_api_endcomp _anim matches 1 run function anim_edit:gui/editor/run/search/load_keyframe/start_2
execute if score $_api_endcomp _anim matches 2 run function anim_edit:gui/editor/load_empty
execute if score $_api_endcomp _anim matches 4 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run scoreboard players operation @s _anim = $animation_id _anim
execute if score $_api_endcomp _anim matches 4 run scoreboard players set $editor_play _anim 1
execute if score $_api_endcomp _anim matches 4 as @e[tag=anim_menu_play] run function anim_edit:gui/editor/reset
execute if score $_api_endcomp _anim matches 4 run scoreboard players reset $_api_endcomp _anim 

