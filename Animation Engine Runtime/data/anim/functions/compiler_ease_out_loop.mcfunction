#Calculates ease out, loop
scoreboard players operation @s _anim_calc4 += @s _anim_calc5
scoreboard players remove @s _anim_calc7 1
execute if score @s _anim_calc7 matches 2.. run function anim:compiler_ease_out_loop


