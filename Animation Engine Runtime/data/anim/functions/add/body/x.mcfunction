execute store result score @s _anim_calc run data get entity @s Pose.Body[0] 1000
execute store result entity @s Pose.Body[0] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_bx
scoreboard players operation @s _anim_bx += @s _anim_bx_ease
scoreboard players reset @s _anim_calc