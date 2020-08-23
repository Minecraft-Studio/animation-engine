execute store result score @s _anim_calc run data get entity @s Pose.LeftArm[0] 1000
execute store result storage anim:runtime entity_data_calc.Pose.LeftArm[0] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_lax
scoreboard players operation @s _anim_lax += @s _anim_lax_ease
scoreboard players reset @s _anim_calc