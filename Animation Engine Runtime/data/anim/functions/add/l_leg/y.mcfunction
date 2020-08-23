execute store result score @s _anim_calc run data get entity @s Pose.LeftLeg[1] 1000
execute store result storage anim:runtime entity_data_calc.Pose.LeftLeg[1] float 0.001 run scoreboard players operation @s _anim_calc += @s _anim_lly
scoreboard players operation @s _anim_lly += @s _anim_lly_ease
scoreboard players reset @s _anim_calc
