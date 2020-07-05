execute store result score @s _anim_calc run data get entity @s Pose.LeftArm[2] 1000
scoreboard players operation @s _anim_calc += @s _anim_laz
scoreboard players operation @s _anim_laz += @s _anim_laz_ease
execute store result entity @s Pose.LeftArm[2] float 0.001 run scoreboard players get @s _anim_calc
scoreboard players reset @s _anim_calc
