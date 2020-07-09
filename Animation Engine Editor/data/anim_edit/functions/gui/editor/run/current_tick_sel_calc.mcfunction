#Calculate
scoreboard players operation $_tick_selected _anim = @e[type=armor_stand,tag=anim_editor_sel,limit=1] _anim_editor_col
scoreboard players operation $_tick_selected _anim = @e[type=armor_stand,tag=anim_sel_menu,scores={_anim_editor_col=0..},limit=1] _anim_editor_col
scoreboard players operation $_tick_selected _anim += $_page _anim
scoreboard players operation $_tick_selected_insec _anim = $_tick_selected _anim
scoreboard players operation $_tick_selected_insec _anim /= $20 _anim
scoreboard players operation $_tick_selected_insec_dec _anim = $_tick_selected _anim
scoreboard players operation $_tick_selected_insec_dec2 _anim = $_tick_selected_insec _anim
scoreboard players operation $_tick_selected_insec_dec2 _anim *= $20 _anim
scoreboard players operation $_tick_selected_insec_dec _anim -= $_tick_selected_insec_dec2 _anim
scoreboard players operation $_tick_selected_insec_dec _anim *= $100 _anim
scoreboard players operation $_tick_selected_insec_dec _anim /= $20 _anim

#Apply
execute as @p[tag=anim_user] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1

execute as @p[tag=anim_user] at @s unless score $_tick_selected_insec_dec _anim matches ..9 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"score":{"name":"$_tick_selected","objective":"_anim"},"color":"gold"},{"text":"t ","color":"gold"},{"text":"(","color":"yellow"},{"score":{"name":"$_tick_selected_insec","objective":"_anim"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"$_tick_selected_insec_dec","objective":"_anim"},"color":"yellow"},{"text":"s)","color":"yellow"}]'}
execute as @p[tag=anim_user] at @s if score $_tick_selected_insec_dec _anim matches ..9 if block ~ ~ ~ air run setblock ~ ~ ~ oak_sign{Text1:'["",{"score":{"name":"$_tick_selected","objective":"_anim"},"color":"gold"},{"text":"t ","color":"gold"},{"text":"(","color":"yellow"},{"score":{"name":"$_tick_selected_insec","objective":"_anim"},"color":"yellow"},{"text":".0","color":"yellow"},{"score":{"name":"$_tick_selected_insec_dec","objective":"_anim"},"color":"yellow"},{"text":"s)","color":"yellow"}]'}
data modify entity @e[type=armor_stand,tag=anim_menu89,limit=1] CustomName set value '{"text":"Err","color":"red"}'
execute as @p[tag=anim_user] at @s run data modify entity @e[type=armor_stand,tag=anim_menu89,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @p[tag=anim_user] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air

scoreboard players reset $_sign_placed _anim