execute store result score @s _anim_calc run data get entity @s Pose.RightLeg[0] 1000
scoreboard players operation @s _anim_calc += @s _anim_rlx
scoreboard players operation @s _anim_hx += @s _anim_rlx_ease
execute store result entity @s Pose.RightLeg[0] float 0.001 run scoreboard players get @s _anim_calc
scoreboard players reset @s _anim_calc