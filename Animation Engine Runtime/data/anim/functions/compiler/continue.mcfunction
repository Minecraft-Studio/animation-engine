#Continues compiler loop
execute as @e[type=armor_stand,scores={_anim_compile=1}] at @s run function anim:compiler/continue2
execute unless entity @e[type=armor_stand,scores={_anim_compile=1}] run scoreboard objectives remove _anim_compile
