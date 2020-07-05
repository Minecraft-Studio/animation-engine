execute store result score @s _anim_calc run data get entity @s Pose.LeftArm[0] 1000
scoreboard players operation @s _anim_calc += @s _anim_lax
execute store result entity @s Pose.LeftArm[0] float 0.001 run scoreboard players get @s _anim_calc
scoreboard players reset @s _anim_calc