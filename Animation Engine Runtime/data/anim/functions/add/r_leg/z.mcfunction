execute store result score @s _anim_calc run data get entity @s Pose.RightLeg[2] 1000
execute store result entity @s Pose.RightLeg[2] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_rlz
scoreboard players operation @s _anim_hx += @s _anim_rlz_ease
scoreboard players reset @s _anim_calc
