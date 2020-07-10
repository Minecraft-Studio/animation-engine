scoreboard players reset @s _anim
scoreboard players remove $anim_playing _anim 1
execute if score $anim_playing _anim matches ..0 run function anim:del_obj
data remove entity @s ArmorItems[2].tag.anim