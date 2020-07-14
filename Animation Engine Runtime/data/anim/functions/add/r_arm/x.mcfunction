execute store result score @s _anim_calc run data get entity @s Pose.RightArm[0] 1000
execute store result entity @s Pose.RightArm[0] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_rax
scoreboard players operation @s _anim_rax += @s _anim_rax_ease
scoreboard players reset @s _anim_calc