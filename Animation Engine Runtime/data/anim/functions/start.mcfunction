#Run this function to start the loaded animation
#By default, it will run it as ALL anim_main & anim_part, but doing it on specific ones with 'execute as' (only works on anim_main/anim_part)

#FIX: add anim_main support

execute if entity @s[tag=anim_part] unless score @s _anim matches 1.. run function anim:setup_anim
execute unless entity @s[tag=anim_part] as @e[type=armor_stand,tag=anim_part] unless score @s _anim matches 1.. run function anim:setup_anim