scoreboard players operation $_ida_lookup _anim = @s _anim_ida
execute store result score @s _anim_calc as @e[tag=anim_main] if score @s _anim_ida = $_ida_lookup _anim run data get entity @s Pos[2] 1000
scoreboard players operation @s _anim_pz_value += @s _anim_pz
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s _anim_calc += @s _anim_pz_value
scoreboard players operation @s _anim_pz += @s _anim_pz_ease
scoreboard players reset @s _anim_calc
scoreboard players reset $_ida_lookup _anim