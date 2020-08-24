#
#>ALL (debug purposes)
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.head.x float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.head.y float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.head.z float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.body.x float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.body.y float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.body.z float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.l_arm.x float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.l_arm.y float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.l_arm.z float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.r_arm.x float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.r_arm.y float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.r_arm.z float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.l_leg.x float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.l_leg.y float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.l_leg.z float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.r_leg.x float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.r_leg.y float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all store result storage anim:editor current_keyframe.rotate.r_leg.z float 1 run data get storage anim:editor key_custom.rotate_all
execute if data storage anim:editor key_custom.rotate_all run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate_all run data remove storage anim:editor key_custom.rotate_all

#>HEAD
execute if data storage anim:editor key_custom.rotate.head.x store result storage anim:editor current_keyframe.rotate.head.x float 1 run data get storage anim:editor key_custom.rotate.head.x
execute if data storage anim:editor key_custom.rotate.head.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.head.x run data remove storage anim:editor key_custom.rotate.head.x

execute if data storage anim:editor key_custom.rotate.head.y store result storage anim:editor current_keyframe.rotate.head.y float 1 run data get storage anim:editor key_custom.rotate.head.y
execute if data storage anim:editor key_custom.rotate.head.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.head.y run data remove storage anim:editor key_custom.rotate.head.y

execute if data storage anim:editor key_custom.rotate.head.z store result storage anim:editor current_keyframe.rotate.head.z float 1 run data get storage anim:editor key_custom.rotate.head.z
execute if data storage anim:editor key_custom.rotate.head.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.head.z run data remove storage anim:editor key_custom.rotate.head.z

#>BODY
execute if data storage anim:editor key_custom.rotate.body.x store result storage anim:editor current_keyframe.rotate.body.x float 1 run data get storage anim:editor key_custom.rotate.body.x
execute if data storage anim:editor key_custom.rotate.body.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.body.x run data remove storage anim:editor key_custom.rotate.body.x

execute if data storage anim:editor key_custom.rotate.body.y store result storage anim:editor current_keyframe.rotate.body.y float 1 run data get storage anim:editor key_custom.rotate.body.y
execute if data storage anim:editor key_custom.rotate.body.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.body.y run data remove storage anim:editor key_custom.rotate.body.y

execute if data storage anim:editor key_custom.rotate.body.z store result storage anim:editor current_keyframe.rotate.body.z float 1 run data get storage anim:editor key_custom.rotate.body.z
execute if data storage anim:editor key_custom.rotate.body.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.body.z run data remove storage anim:editor key_custom.rotate.body.z

#>LEFT ARM
execute if data storage anim:editor key_custom.rotate.l_arm.x store result storage anim:editor current_keyframe.rotate.l_arm.x float 1 run data get storage anim:editor key_custom.rotate.l_arm.x
execute if data storage anim:editor key_custom.rotate.l_arm.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.l_arm.x run data remove storage anim:editor key_custom.rotate.l_arm.x

execute if data storage anim:editor key_custom.rotate.l_arm.y store result storage anim:editor current_keyframe.rotate.l_arm.y float 1 run data get storage anim:editor key_custom.rotate.l_arm.y
execute if data storage anim:editor key_custom.rotate.l_arm.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.l_arm.y run data remove storage anim:editor key_custom.rotate.l_arm.y

execute if data storage anim:editor key_custom.rotate.l_arm.z store result storage anim:editor current_keyframe.rotate.l_arm.z float 1 run data get storage anim:editor key_custom.rotate.l_arm.z
execute if data storage anim:editor key_custom.rotate.l_arm.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.l_arm.z run data remove storage anim:editor key_custom.rotate.l_arm.z

#>RIGHT ARM
execute if data storage anim:editor key_custom.rotate.r_arm.x store result storage anim:editor current_keyframe.rotate.r_arm.x float 1 run data get storage anim:editor key_custom.rotate.r_arm.x
execute if data storage anim:editor key_custom.rotate.r_arm.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.r_arm.x run data remove storage anim:editor key_custom.rotate.r_arm.x

execute if data storage anim:editor key_custom.rotate.r_arm.y store result storage anim:editor current_keyframe.rotate.r_arm.y float 1 run data get storage anim:editor key_custom.rotate.r_arm.y
execute if data storage anim:editor key_custom.rotate.r_arm.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.r_arm.y run data remove storage anim:editor key_custom.rotate.r_arm.y

execute if data storage anim:editor key_custom.rotate.r_arm.z store result storage anim:editor current_keyframe.rotate.r_arm.z float 1 run data get storage anim:editor key_custom.rotate.r_arm.z
execute if data storage anim:editor key_custom.rotate.r_arm.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.r_arm.z run data remove storage anim:editor key_custom.rotate.r_arm.z

#>LEFT LEG
execute if data storage anim:editor key_custom.rotate.l_leg.x store result storage anim:editor current_keyframe.rotate.l_leg.x float 1 run data get storage anim:editor key_custom.rotate.l_leg.x
execute if data storage anim:editor key_custom.rotate.l_leg.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.l_leg.x run data remove storage anim:editor key_custom.rotate.l_leg.x

execute if data storage anim:editor key_custom.rotate.l_leg.y store result storage anim:editor current_keyframe.rotate.l_leg.y float 1 run data get storage anim:editor key_custom.rotate.l_leg.y
execute if data storage anim:editor key_custom.rotate.l_leg.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.l_leg.y run data remove storage anim:editor key_custom.rotate.l_leg.y

execute if data storage anim:editor key_custom.rotate.l_leg.z store result storage anim:editor current_keyframe.rotate.l_leg.z float 1 run data get storage anim:editor key_custom.rotate.l_leg.z
execute if data storage anim:editor key_custom.rotate.l_leg.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.l_leg.z run data remove storage anim:editor key_custom.rotate.l_leg.z

#>RIGHT LEG
execute if data storage anim:editor key_custom.rotate.r_leg.x store result storage anim:editor current_keyframe.rotate.r_leg.x float 1 run data get storage anim:editor key_custom.rotate.r_leg.x
execute if data storage anim:editor key_custom.rotate.r_leg.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.r_leg.x run data remove storage anim:editor key_custom.rotate.r_leg.x

execute if data storage anim:editor key_custom.rotate.r_leg.y store result storage anim:editor current_keyframe.rotate.r_leg.y float 1 run data get storage anim:editor key_custom.rotate.r_leg.y
execute if data storage anim:editor key_custom.rotate.r_leg.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.r_leg.y run data remove storage anim:editor key_custom.rotate.r_leg.y

execute if data storage anim:editor key_custom.rotate.r_leg.z store result storage anim:editor current_keyframe.rotate.r_leg.z float 1 run data get storage anim:editor key_custom.rotate.r_leg.z
execute if data storage anim:editor key_custom.rotate.r_leg.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.r_leg.z run data remove storage anim:editor key_custom.rotate.r_leg.z

#>ROTATION
execute if data storage anim:editor key_custom.rotate.rotation.x store result storage anim:editor current_keyframe.rotate.rotation.x float 1 run data get storage anim:editor key_custom.rotate.rotation.x
execute if data storage anim:editor key_custom.rotate.rotation.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.rotation.x run data remove storage anim:editor key_custom.rotate.rotation.x

execute if data storage anim:editor key_custom.rotate.rotation.y store result storage anim:editor current_keyframe.rotate.rotation.y float 1 run data get storage anim:editor key_custom.rotate.rotation.y
execute if data storage anim:editor key_custom.rotate.rotation.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.rotate.rotation.y run data remove storage anim:editor key_custom.rotate.rotation.y

#>POSITION
execute if data storage anim:editor key_custom.position.x store result storage anim:editor current_keyframe.position.x float 1 run data get storage anim:editor key_custom.position.x
execute if data storage anim:editor key_custom.position.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.position.x run data remove storage anim:editor key_custom.position.x

execute if data storage anim:editor key_custom.position.y store result storage anim:editor current_keyframe.position.y float 1 run data get storage anim:editor key_custom.position.y
execute if data storage anim:editor key_custom.position.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.position.y run data remove storage anim:editor key_custom.position.y

execute if data storage anim:editor key_custom.position.z store result storage anim:editor current_keyframe.position.z float 1 run data get storage anim:editor key_custom.position.z
execute if data storage anim:editor key_custom.position.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_custom.position.z run data remove storage anim:editor key_custom.position.z

#>ADD HEAD
execute if data storage anim:editor key_add.rotate.head.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.head.x 1000
execute if data storage anim:editor key_add.rotate.head.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.head.x 1000
execute if data storage anim:editor key_add.rotate.head.x store result storage anim:editor current_keyframe.rotate.head.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.head.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.head.x run data remove storage anim:editor key_add.rotate.head.x

execute if data storage anim:editor key_add.rotate.head.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.head.y 1000
execute if data storage anim:editor key_add.rotate.head.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.head.y 1000
execute if data storage anim:editor key_add.rotate.head.y store result storage anim:editor current_keyframe.rotate.head.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.head.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.head.y run data remove storage anim:editor key_add.rotate.head.y

execute if data storage anim:editor key_add.rotate.head.z store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.head.z 1000
execute if data storage anim:editor key_add.rotate.head.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.head.z 1000
execute if data storage anim:editor key_add.rotate.head.z store result storage anim:editor current_keyframe.rotate.head.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.head.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.head.z run data remove storage anim:editor key_add.rotate.head.z

#>ADD BODY
execute if data storage anim:editor key_add.rotate.body.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.body.x 1000
execute if data storage anim:editor key_add.rotate.body.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.body.x 1000
execute if data storage anim:editor key_add.rotate.body.x store result storage anim:editor current_keyframe.rotate.body.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.body.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.body.x run data remove storage anim:editor key_add.rotate.body.x

execute if data storage anim:editor key_add.rotate.body.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.body.y 1000
execute if data storage anim:editor key_add.rotate.body.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.body.y 1000
execute if data storage anim:editor key_add.rotate.body.y store result storage anim:editor current_keyframe.rotate.body.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.body.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.body.y run data remove storage anim:editor key_add.rotate.body.y

execute if data storage anim:editor key_add.rotate.body.z store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.body.z 1000
execute if data storage anim:editor key_add.rotate.body.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.body.z 1000
execute if data storage anim:editor key_add.rotate.body.z store result storage anim:editor current_keyframe.rotate.body.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.body.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.body.z run data remove storage anim:editor key_add.rotate.body.z

#>ADD LEFT ARM
execute if data storage anim:editor key_add.rotate.l_arm.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.l_arm.x 1000
execute if data storage anim:editor key_add.rotate.l_arm.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.l_arm.x 1000
execute if data storage anim:editor key_add.rotate.l_arm.x store result storage anim:editor current_keyframe.rotate.l_arm.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.l_arm.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.l_arm.x run data remove storage anim:editor key_add.rotate.l_arm.x

execute if data storage anim:editor key_add.rotate.l_arm.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.l_arm.y 1000
execute if data storage anim:editor key_add.rotate.l_arm.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.l_arm.y 1000
execute if data storage anim:editor key_add.rotate.l_arm.y store result storage anim:editor current_keyframe.rotate.l_arm.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.l_arm.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.l_arm.y run data remove storage anim:editor key_add.rotate.l_arm.y

execute if data storage anim:editor key_add.rotate.l_arm.z store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.l_arm.z 1000
execute if data storage anim:editor key_add.rotate.l_arm.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.l_arm.z 1000
execute if data storage anim:editor key_add.rotate.l_arm.z store result storage anim:editor current_keyframe.rotate.l_arm.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.l_arm.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.l_arm.z run data remove storage anim:editor key_add.rotate.l_arm.z

#>ADD RIGHT ARM
execute if data storage anim:editor key_add.rotate.r_arm.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.r_arm.x 1000
execute if data storage anim:editor key_add.rotate.r_arm.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.r_arm.x 1000
execute if data storage anim:editor key_add.rotate.r_arm.x store result storage anim:editor current_keyframe.rotate.r_arm.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.r_arm.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.r_arm.x run data remove storage anim:editor key_add.rotate.r_arm.x

execute if data storage anim:editor key_add.rotate.r_arm.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.r_arm.y 1000
execute if data storage anim:editor key_add.rotate.r_arm.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.r_arm.y 1000
execute if data storage anim:editor key_add.rotate.r_arm.y store result storage anim:editor current_keyframe.rotate.r_arm.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.r_arm.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.r_arm.y run data remove storage anim:editor key_add.rotate.r_arm.y

execute if data storage anim:editor key_add.rotate.r_arm.z store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.r_arm.z 1000
execute if data storage anim:editor key_add.rotate.r_arm.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.r_arm.z 1000
execute if data storage anim:editor key_add.rotate.r_arm.z store result storage anim:editor current_keyframe.rotate.r_arm.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.r_arm.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.r_arm.z run data remove storage anim:editor key_add.rotate.r_arm.z

#>ADD LEFT LEG
execute if data storage anim:editor key_add.rotate.l_leg.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.l_leg.x 1000
execute if data storage anim:editor key_add.rotate.l_leg.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.l_leg.x 1000
execute if data storage anim:editor key_add.rotate.l_leg.x store result storage anim:editor current_keyframe.rotate.l_leg.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.l_leg.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.l_leg.x run data remove storage anim:editor key_add.rotate.l_leg.x

execute if data storage anim:editor key_add.rotate.l_leg.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.l_leg.y 1000
execute if data storage anim:editor key_add.rotate.l_leg.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.l_leg.y 1000
execute if data storage anim:editor key_add.rotate.l_leg.y store result storage anim:editor current_keyframe.rotate.l_leg.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.l_leg.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.l_leg.y run data remove storage anim:editor key_add.rotate.l_leg.y

execute if data storage anim:editor key_add.rotate.l_leg.z store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.l_leg.z 1000
execute if data storage anim:editor key_add.rotate.l_leg.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.l_leg.z 1000
execute if data storage anim:editor key_add.rotate.l_leg.z store result storage anim:editor current_keyframe.rotate.l_leg.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.l_leg.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.l_leg.z run data remove storage anim:editor key_add.rotate.l_leg.z

#>ADD RIGHT LEG
execute if data storage anim:editor key_add.rotate.r_leg.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.r_leg.x 1000
execute if data storage anim:editor key_add.rotate.r_leg.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.r_leg.x 1000
execute if data storage anim:editor key_add.rotate.r_leg.x store result storage anim:editor current_keyframe.rotate.r_leg.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.r_leg.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.r_leg.x run data remove storage anim:editor key_add.rotate.r_leg.x

execute if data storage anim:editor key_add.rotate.r_leg.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.r_leg.y 1000
execute if data storage anim:editor key_add.rotate.r_leg.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.r_leg.y 1000
execute if data storage anim:editor key_add.rotate.r_leg.y store result storage anim:editor current_keyframe.rotate.r_leg.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.r_leg.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.r_leg.y run data remove storage anim:editor key_add.rotate.r_leg.y

execute if data storage anim:editor key_add.rotate.r_leg.z store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.r_leg.z 1000
execute if data storage anim:editor key_add.rotate.r_leg.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.r_leg.z 1000
execute if data storage anim:editor key_add.rotate.r_leg.z store result storage anim:editor current_keyframe.rotate.r_leg.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.r_leg.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.r_leg.z run data remove storage anim:editor key_add.rotate.r_leg.z

#>ADD POSITION
execute if data storage anim:editor key_add.position.x store result score $_tmp_data _anim run data get storage anim:editor key_add.position.x 1000
execute if data storage anim:editor key_add.position.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.position.x 1000
execute if data storage anim:editor key_add.position.x store result storage anim:editor current_keyframe.position.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.position.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.position.x run data remove storage anim:editor key_add.position.x

execute if data storage anim:editor key_add.position.y store result score $_tmp_data _anim run data get storage anim:editor key_add.position.y 1000
execute if data storage anim:editor key_add.position.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.position.y 1000
execute if data storage anim:editor key_add.position.y store result storage anim:editor current_keyframe.position.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.position.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.position.y run data remove storage anim:editor key_add.position.y

execute if data storage anim:editor key_add.position.z store result score $_tmp_data _anim run data get storage anim:editor key_add.position.z 1000
execute if data storage anim:editor key_add.position.z store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.position.z 1000
execute if data storage anim:editor key_add.position.z store result storage anim:editor current_keyframe.position.z float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.position.z run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.position.z run data remove storage anim:editor key_add.position.z

#>ADD ROTATION
execute if data storage anim:editor key_add.rotate.rotation.x store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.rotation.x 1000
execute if data storage anim:editor key_add.rotate.rotation.x store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.rotation.x 1000
execute if data storage anim:editor key_add.rotate.rotation.x store result storage anim:editor current_keyframe.rotate.rotation.x float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.rotation.x run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.rotation.x run data remove storage anim:editor key_add.rotate.rotation.x

execute if data storage anim:editor key_add.rotate.rotation.y store result score $_tmp_data _anim run data get storage anim:editor key_add.rotate.rotation.y 1000
execute if data storage anim:editor key_add.rotate.rotation.y store result score $_tmp_data2 _anim run data get storage anim:editor current_keyframe.rotate.rotation.y 1000
execute if data storage anim:editor key_add.rotate.rotation.y store result storage anim:editor current_keyframe.rotate.rotation.y float 0.001 run scoreboard players operation $_tmp_data _anim += $_tmp_data2 _anim
execute if data storage anim:editor key_add.rotate.rotation.y run function anim_edit:gui/editor/load
execute if data storage anim:editor key_add.rotate.rotation.y run data remove storage anim:editor key_add.rotate.rotation.y

scoreboard players reset $_tmp_data _anim
scoreboard players reset $_tmp_data2 _anim