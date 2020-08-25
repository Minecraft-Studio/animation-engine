execute store result storage anim:editor backup.id int 1 run scoreboard players get @e[tag=anim_model_select,limit=1] _anim_ida
data modify storage anim:editor backup.data set from storage anim:editor keyframes
execute if score $_api_endcomp _anim matches 1.. run data modify storage anim:backup automatic insert 0 from storage anim:editor backup
execute unless score $_api_endcomp _anim matches 1.. run data modify storage anim:backup manual insert 0 from storage anim:editor backup
execute unless score $_api_endcomp _anim matches 1.. run tellraw @s {"text":"\nBackup of current keyframes has been created\n","color":"green"}
data remove storage anim:editor backup