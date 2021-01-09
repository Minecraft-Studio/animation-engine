#
#>Asign values so it can be rotated correctly
execute unless data entity @s Pose.Head run scoreboard players set $_tmp_Head _anim 1
execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.Body run scoreboard players set $_tmp_Body _anim 1
execute unless data entity @s Pose.Body run data modify entity @s Pose.Body set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.LeftLeg run scoreboard players set $_tmp_LeftLeg _anim 1
execute unless data entity @s Pose.LeftLeg run data modify entity @s Pose.LeftLeg set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.RightLeg run scoreboard players set $_tmp_RightLeg _anim 1
execute unless data entity @s Pose.RightLeg run data modify entity @s Pose.RightLeg set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.LeftArm run scoreboard players set $_tmp_LeftArm _anim 1
execute unless data entity @s Pose.LeftArm run data modify entity @s Pose.LeftArm set value [0.0f,0.0f,0.001f]
execute unless data entity @s Pose.RightArm run scoreboard players set $_tmp_RightArm _anim 1
execute unless data entity @s Pose.RightArm run data modify entity @s Pose.RightArm set value [0.0f,0.0f,0.001f]
execute unless data entity @s Rotation run scoreboard players set $_tmp_Rotation _anim 1
execute unless data entity @s Rotation run data modify entity @s Rotation set value [0.0f,0.001f]

#>Live preview of the rotation values
execute if data storage anim:editor current_keyframe.value.rotate.head.x run data modify entity @s Pose.Head[0] set from storage anim:editor current_keyframe.value.rotate.head.x
execute if data storage anim:editor current_keyframe.value.rotate.head.y run data modify entity @s Pose.Head[1] set from storage anim:editor current_keyframe.value.rotate.head.y
execute if data storage anim:editor current_keyframe.value.rotate.head.z run data modify entity @s Pose.Head[2] set from storage anim:editor current_keyframe.value.rotate.head.z
execute if data storage anim:editor current_keyframe.value.rotate.body.x run data modify entity @s Pose.Body[0] set from storage anim:editor current_keyframe.value.rotate.body.x
execute if data storage anim:editor current_keyframe.value.rotate.body.y run data modify entity @s Pose.Body[1] set from storage anim:editor current_keyframe.value.rotate.body.y
execute if data storage anim:editor current_keyframe.value.rotate.body.z run data modify entity @s Pose.Body[2] set from storage anim:editor current_keyframe.value.rotate.body.z
execute if data storage anim:editor current_keyframe.value.rotate.l_arm.x run data modify entity @s Pose.LeftArm[0] set from storage anim:editor current_keyframe.value.rotate.l_arm.x
execute if data storage anim:editor current_keyframe.value.rotate.l_arm.y run data modify entity @s Pose.LeftArm[1] set from storage anim:editor current_keyframe.value.rotate.l_arm.y
execute if data storage anim:editor current_keyframe.value.rotate.l_arm.z run data modify entity @s Pose.LeftArm[2] set from storage anim:editor current_keyframe.value.rotate.l_arm.z
execute if data storage anim:editor current_keyframe.value.rotate.r_arm.x run data modify entity @s Pose.RightArm[0] set from storage anim:editor current_keyframe.value.rotate.r_arm.x
execute if data storage anim:editor current_keyframe.value.rotate.r_arm.y run data modify entity @s Pose.RightArm[1] set from storage anim:editor current_keyframe.value.rotate.r_arm.y
execute if data storage anim:editor current_keyframe.value.rotate.r_arm.z run data modify entity @s Pose.RightArm[2] set from storage anim:editor current_keyframe.value.rotate.r_arm.z
execute if data storage anim:editor current_keyframe.value.rotate.l_leg.x run data modify entity @s Pose.LeftLeg[0] set from storage anim:editor current_keyframe.value.rotate.l_leg.x
execute if data storage anim:editor current_keyframe.value.rotate.l_leg.y run data modify entity @s Pose.LeftLeg[1] set from storage anim:editor current_keyframe.value.rotate.l_leg.y
execute if data storage anim:editor current_keyframe.value.rotate.l_leg.z run data modify entity @s Pose.LeftLeg[2] set from storage anim:editor current_keyframe.value.rotate.l_leg.z
execute if data storage anim:editor current_keyframe.value.rotate.r_leg.x run data modify entity @s Pose.RightLeg[0] set from storage anim:editor current_keyframe.value.rotate.r_leg.x
execute if data storage anim:editor current_keyframe.value.rotate.r_leg.y run data modify entity @s Pose.RightLeg[1] set from storage anim:editor current_keyframe.value.rotate.r_leg.y
execute if data storage anim:editor current_keyframe.value.rotate.r_leg.z run data modify entity @s Pose.RightLeg[2] set from storage anim:editor current_keyframe.value.rotate.r_leg.z
execute if data storage anim:editor current_keyframe.value.rotate.rotation.x run data modify entity @s Rotation[0] set from storage anim:editor current_keyframe.value.rotate.rotation.x
execute if data storage anim:editor current_keyframe.value.rotate.rotation.y run data modify entity @s Rotation[1] set from storage anim:editor current_keyframe.value.rotate.rotation.y
execute if data storage anim:editor current_keyframe.value.pos.x as @e[type=armor_stand,tag=anim_main_select,limit=1] store result score $_pos_calc1 _anim run data get entity @s Pos[0] 1000
execute if data storage anim:editor current_keyframe.value.pos.x store result score $_pos_calc2 _anim run data get storage anim:editor current_keyframe.value.pos.x 1000
execute if data storage anim:editor current_keyframe.value.pos.x store result entity @s Pos[0] double 0.001 run scoreboard players operation $_pos_calc1 _anim += $_pos_calc2 _anim
execute if data storage anim:editor current_keyframe.value.pos.y as @e[type=armor_stand,tag=anim_main_select,limit=1] store result score $_pos_calc1 _anim run data get entity @s Pos[1] 1000
execute if data storage anim:editor current_keyframe.value.pos.y store result score $_pos_calc2 _anim run data get storage anim:editor current_keyframe.value.pos.y 1000
execute if data storage anim:editor current_keyframe.value.pos.y store result entity @s Pos[1] double 0.001 run scoreboard players operation $_pos_calc1 _anim += $_pos_calc2 _anim
execute if data storage anim:editor current_keyframe.value.pos.z as @e[type=armor_stand,tag=anim_main_select,limit=1] store result score $_pos_calc1 _anim run data get entity @s Pos[2] 1000
execute if data storage anim:editor current_keyframe.value.pos.z store result score $_pos_calc2 _anim run data get storage anim:editor current_keyframe.value.pos.z 1000
execute if data storage anim:editor current_keyframe.value.pos.z store result entity @s Pos[2] double 0.001 run scoreboard players operation $_pos_calc1 _anim += $_pos_calc2 _anim
execute unless data storage anim:editor current_keyframe.value.rotate.head.x run data modify entity @s Pose.Head[0] set from storage anim:editor anim_prev_key.head.x
execute unless data storage anim:editor current_keyframe.value.rotate.head.y run data modify entity @s Pose.Head[1] set from storage anim:editor anim_prev_key.head.y
execute unless data storage anim:editor current_keyframe.value.rotate.head.z run data modify entity @s Pose.Head[2] set from storage anim:editor anim_prev_key.head.z
execute unless data storage anim:editor current_keyframe.value.rotate.body.x run data modify entity @s Pose.Body[0] set from storage anim:editor anim_prev_key.body.x
execute unless data storage anim:editor current_keyframe.value.rotate.body.y run data modify entity @s Pose.Body[1] set from storage anim:editor anim_prev_key.body.y
execute unless data storage anim:editor current_keyframe.value.rotate.body.z run data modify entity @s Pose.Body[2] set from storage anim:editor anim_prev_key.body.z
execute unless data storage anim:editor current_keyframe.value.rotate.l_arm.x run data modify entity @s Pose.LeftArm[0] set from storage anim:editor anim_prev_key.l_arm.x
execute unless data storage anim:editor current_keyframe.value.rotate.l_arm.y run data modify entity @s Pose.LeftArm[1] set from storage anim:editor anim_prev_key.l_arm.y
execute unless data storage anim:editor current_keyframe.value.rotate.l_arm.z run data modify entity @s Pose.LeftArm[2] set from storage anim:editor anim_prev_key.l_arm.z
execute unless data storage anim:editor current_keyframe.value.rotate.r_arm.x run data modify entity @s Pose.RightArm[0] set from storage anim:editor anim_prev_key.r_arm.x
execute unless data storage anim:editor current_keyframe.value.rotate.r_arm.y run data modify entity @s Pose.RightArm[1] set from storage anim:editor anim_prev_key.r_arm.y
execute unless data storage anim:editor current_keyframe.value.rotate.r_arm.z run data modify entity @s Pose.RightArm[2] set from storage anim:editor anim_prev_key.r_arm.z
execute unless data storage anim:editor current_keyframe.value.rotate.l_leg.x run data modify entity @s Pose.LeftLeg[0] set from storage anim:editor anim_prev_key.l_leg.x
execute unless data storage anim:editor current_keyframe.value.rotate.l_leg.y run data modify entity @s Pose.LeftLeg[1] set from storage anim:editor anim_prev_key.l_leg.y
execute unless data storage anim:editor current_keyframe.value.rotate.l_leg.z run data modify entity @s Pose.LeftLeg[2] set from storage anim:editor anim_prev_key.l_leg.z
execute unless data storage anim:editor current_keyframe.value.rotate.r_leg.x run data modify entity @s Pose.RightLeg[0] set from storage anim:editor anim_prev_key.r_leg.x
execute unless data storage anim:editor current_keyframe.value.rotate.r_leg.y run data modify entity @s Pose.RightLeg[1] set from storage anim:editor anim_prev_key.r_leg.y
execute unless data storage anim:editor current_keyframe.value.rotate.r_leg.z run data modify entity @s Pose.RightLeg[2] set from storage anim:editor anim_prev_key.r_leg.z
execute unless data storage anim:editor current_keyframe.value.pos.x as @e[type=armor_stand,tag=anim_main_select,limit=1] store result score $_pos_calc1 _anim run data get entity @s Pos[0] 1000
execute unless data storage anim:editor current_keyframe.value.pos.x store result score $_pos_calc2 _anim run data get storage anim:editor anim_prev_key.pos[0] 1000
execute unless data storage anim:editor current_keyframe.value.pos.x store result entity @s Pos[0] double 0.001 run scoreboard players operation $_pos_calc1 _anim += $_pos_calc2 _anim
execute unless data storage anim:editor current_keyframe.value.pos.y as @e[type=armor_stand,tag=anim_main_select,limit=1] store result score $_pos_calc1 _anim run data get entity @s Pos[1] 1000
execute unless data storage anim:editor current_keyframe.value.pos.y store result score $_pos_calc2 _anim run data get storage anim:editor anim_prev_key.pos[1] 1000
execute unless data storage anim:editor current_keyframe.value.pos.y store result entity @s Pos[1] double 0.001 run scoreboard players operation $_pos_calc1 _anim += $_pos_calc2 _anim
execute unless data storage anim:editor current_keyframe.value.pos.z as @e[type=armor_stand,tag=anim_main_select,limit=1] store result score $_pos_calc1 _anim run data get entity @s Pos[2] 1000
execute unless data storage anim:editor current_keyframe.value.pos.z store result score $_pos_calc2 _anim run data get storage anim:editor anim_prev_key.pos[2] 1000
execute unless data storage anim:editor current_keyframe.value.pos.z store result entity @s Pos[2] double 0.001 run scoreboard players operation $_pos_calc1 _anim += $_pos_calc2 _anim
execute unless data storage anim:editor current_keyframe.value.rotate.rotation.x run data modify entity @s Rotation[0] set from storage anim:editor anim_prev_key.rotation.x
execute unless data storage anim:editor current_keyframe.value.rotate.rotation.y run data modify entity @s Rotation[1] set from storage anim:editor anim_prev_key.rotation.y
scoreboard players reset $_pos_calc1 _anim
scoreboard players reset $_pos_calc2 _anim
execute if score $_tmp_Head _anim matches 1 store result score $_tmp_Head _anim run data get entity @s Pose.Head[2] 1000
execute if score $_tmp_Body _anim matches 1 store result score $_tmp_Body _anim run data get entity @s Pose.Body[2] 1000
execute if score $_tmp_LeftLeg _anim matches 1 store result score $_tmp_LeftLeg _anim run data get entity @s Pose.LeftLeg[2] 1000
execute if score $_tmp_RightLeg _anim matches 1 store result score $_tmp_RightLeg _anim run data get entity @s Pose.RightLeg[2] 1000
execute if score $_tmp_LeftArm _anim matches 1 store result score $_tmp_LeftArm _anim run data get entity @s Pose.LeftArm[2] 1000
execute if score $_tmp_RightArm _anim matches 1 store result score $_tmp_RightArm _anim run data get entity @s Pose.RightArm[2] 1000
execute if score $_tmp_Rotation _anim matches 1 store result score $_tmp_Rotation _anim run data get entity @s Rotation[1] 1000
execute if score $_tmp_Head _anim matches 1 run data modify entity @s Pose.Head[2] set value 0.0f
execute if score $_tmp_Body _anim matches 1 run data modify entity @s Pose.Body[2] set value 0.0f
execute if score $_tmp_LeftLeg _anim matches 1 run data modify entity @s Pose.LeftLeg[2] set value 0.0f
execute if score $_tmp_RightLeg _anim matches 1 run data modify entity @s Pose.RightLeg[2] set value 0.0f
execute if score $_tmp_LeftArm _anim matches 1 run data modify entity @s Pose.LeftArm[2] set value 0.0f
execute if score $_tmp_RightArm _anim matches 1 run data modify entity @s Pose.RightArm[2] set value 0.0f
execute if score $_tmp_Rotation _anim matches 1 run data modify entity @s Rotation[1] set value 0.0f
scoreboard players reset $_tmp_Head _anim
scoreboard players reset $_tmp_Body _anim
scoreboard players reset $_tmp_LeftLeg _anim
scoreboard players reset $_tmp_RightLeg _anim
scoreboard players reset $_tmp_LeftArm _anim
scoreboard players reset $_tmp_RightArm _anim
scoreboard players reset $_tmp_Rotation _anim