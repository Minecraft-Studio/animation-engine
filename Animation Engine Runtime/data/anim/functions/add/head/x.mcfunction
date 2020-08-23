execute store result score @s _anim_calc run data get entity @s Pose.Head[0] 1000
execute store result storage anim:runtime entity_data_calc.Pose.Head[0] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_hx
scoreboard players operation @s _anim_hx += @s _anim_hx_ease
scoreboard players reset @s _anim_calc