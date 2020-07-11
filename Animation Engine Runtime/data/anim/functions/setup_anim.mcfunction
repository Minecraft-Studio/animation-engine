#Setups anim_part for playing the selected animation
# Creates needed objectives to store data
execute unless score $anim_playing _anim matches 1.. run function anim:create_obj
# Adds 1 to $anim_playing, this is used to keep track of number of currently playing animations, if 0 removes the objectives
scoreboard players add $anim_playing _anim 1

scoreboard players set @s _anim_tick 0
scoreboard players set @s _anim_tick_left 0

#FIX: LOAD ID OF THE ANIMATION IN _ANIM, TEMP SET TO 1
scoreboard players set @s _anim 1

