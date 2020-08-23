scoreboard players reset @s _anim
scoreboard players set $anim_playing _anim 0
execute as @e[tag=anim_part] if score @s _anim matches -2147483648..2147483647 run scoreboard players add $anim_playing _anim 1
execute if score $anim_playing _anim matches ..0 run function anim:del_obj
data remove entity @s ArmorItems[2].tag.anim
data remove storage anim:runtime entity_data_calc