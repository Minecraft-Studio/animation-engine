execute store result score @s _anim_calc run data get entity @s Pose.RightArm[0] 1000
scoreboard players operation @s _anim_calc += @s _anim_rax
execute store result entity @s Pose.RightArm[0] float 0.001 run scoreboard players get @s _anim_calc
scoreboard players reset @s _anim_calc