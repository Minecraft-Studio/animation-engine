#runs when delete keyframe (triggered by delete button)
#bossbar
execute store result score $_del_kleft _anim run data get storage anim:editor search_comp
scoreboard players operation $_del_kdone _anim = $_del_kmax _anim
execute store result bossbar _anim_prgbar value run scoreboard players operation $_del_kdone _anim -= $_del_kleft _anim
scoreboard players operation $_del_time_left _anim = $_del_kmax _anim
scoreboard players operation $_del_time_left _anim /= $sett_compile _anim
scoreboard players operation $_del_time_left _anim /= $20 _anim
bossbar set _anim_prgbar name ["",{"text":"Deleting... ","color":"red"},{"text":"(","color":"#ffa2a2"},{"score":{"name":"$_del_kleft","objective":"_anim"},"color":"#ffa2a2"},{"text":" left ) apx. ","color":"#ffa2a2"},{"score":{"name":"$_del_time_left","objective":"_anim"},"color":"#ffa2a2"},{"text":" seconds","color":"#ffa2a2"}]

#loop
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
execute if score $_search_t _anim = $_dkey_col _anim if score $_search_p _anim = $_dkey_row _anim run scoreboard players set $_key_deleted _anim 1
execute unless score $_key_deleted _anim matches 1 run data modify storage anim:editor result append from storage anim:editor search[0]
scoreboard players reset $_key_deleted _anim
data remove storage anim:editor search[0]

# remove the whole keyframes incase the result is empty
execute unless data storage anim:editor search[] run tellraw @p[tag=anim_user] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute unless data storage anim:editor search[] run tellraw @p[tag=anim_user] [{"text":"Successfully deleted keyframe ","color":"red"},{"score":{"name":"$_dkey_col","objective":"_anim"},"color":"dark_red"},{"text":" in row ","color":"red"},{"score":{"name":"$_dkey_row","objective":"_anim"},"color":"dark_red"}]
execute unless data storage anim:editor search[] run data remove storage anim:editor keyframes
# set the keyframes to result (success if result has something)
execute unless data storage anim:editor search[] run data modify storage anim:editor keyframes set from storage anim:editor result
# loop
scoreboard players add $_del_loop _anim 1
execute if data storage anim:editor search[] unless score $_del_loop _anim > $sett_compile _anim run function anim_edit:gui/editor/run/search/delete_keyframe/loop
execute if data storage anim:editor search[] if score $_del_loop _anim > $sett_compile _anim run schedule function anim_edit:gui/editor/run/search/delete_keyframe/loop 1t
execute if data storage anim:editor search[] if score $_del_loop _anim > $sett_compile _anim run scoreboard players set $_del_loop _anim 1

# end
execute unless data storage anim:editor search[] run scoreboard players reset $_del_loop _anim
execute unless data storage anim:editor search[] run bossbar remove _anim_prgbar
# refresh the screen
execute unless data storage anim:editor search[] run function anim_edit:gui/editor/run/search/load_all_keyframes/start