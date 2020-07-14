execute store result score @s _anim_calc run data get entity @s Pose.Body[1] 1000
execute store result entity @s Pose.Body[1] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_by
scoreboard players operation @s _anim_by += @s _anim_by_ease
scoreboard players reset @s _anim_calc
