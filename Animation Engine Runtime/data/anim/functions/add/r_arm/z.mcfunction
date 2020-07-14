execute store result score @s _anim_calc run data get entity @s Pose.RightArm[2] 1000
execute store result entity @s Pose.RightArm[2] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_raz
scoreboard players operation @s _anim_raz += @s _anim_raz_ease
scoreboard players reset @s _anim_calc
