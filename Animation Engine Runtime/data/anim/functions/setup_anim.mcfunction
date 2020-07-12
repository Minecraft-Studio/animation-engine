#Setups anim_part for playing the selected animation
# Creates needed objectives to store data
execute unless score $anim_playing _anim matches 1.. run function anim:create_obj
# Adds 1 to $anim_playing, this is used to keep track of number of currently playing animations, if 0 removes the objectives
scoreboard players add $anim_playing _anim 1

scoreboard players set @s _anim_tick 0
scoreboard players set @s _anim_tick_left 0

#FIX: LOAD ID OF THE ANIMATION IN _ANIM, TEMP SET TO 1
scoreboard players set @s _anim 1

#CALC
scoreboard objectives add _anim_calc2 dummy
scoreboard objectives add _anim_calc3 dummy
scoreboard objectives add _anim_calc4 dummy
scoreboard objectives add _anim_calc5 dummy
scoreboard objectives add _anim_calc6 dummy
scoreboard objectives add _anim_calc7 dummy
execute store result score @s _anim_calc2 run data get entity @s ArmorItems[2].tag.anim[0].tick
execute store result score @s _anim_tick_left run scoreboard players operation @s _anim_calc2 -= $1 _anim
# Head x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Head[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.head.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless data entity @s ArmorItems[{tag:{anim_get:{type:4}}}] run function anim:compiler
execute store result score @s _anim_hx run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_hx_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000


#Apply
scoreboard objectives remove _anim_calc2
scoreboard objectives remove _anim_calc3
scoreboard objectives remove _anim_calc4
scoreboard objectives remove _anim_calc5
scoreboard objectives remove _anim_calc6
scoreboard objectives remove _anim_calc7
