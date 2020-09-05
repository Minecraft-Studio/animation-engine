#Converts a value into 4 values
#Input: $_dec_val
#Output: $_dec_val1 $_dec_val2 $_dec_val3 $_dec_val4 (resets $_dec_val)
data modify storage anim:editor dec_val1_negative set value ""
execute store result score $_dec_val4 _anim store result score $_dec_val3 _anim store result score $_dec_val2 _anim run scoreboard players operation $_dec_val1 _anim = $_dec_val _anim
execute if score $_dec_val1 _anim matches ..-1 run data modify storage anim:editor dec_val1_negative set value "-"
execute if score $_dec_val1 _anim matches ..-1 run scoreboard players operation $_dec_val1 _anim *= $-1 _anim
execute if score $_dec_val2 _anim matches ..-1 run scoreboard players operation $_dec_val2 _anim *= $-1 _anim
execute if score $_dec_val3 _anim matches ..-1 run scoreboard players operation $_dec_val3 _anim *= $-1 _anim
execute if score $_dec_val4 _anim matches ..-1 run scoreboard players operation $_dec_val4 _anim *= $-1 _anim
scoreboard players operation $_dec_val1 _anim /= $1000 _anim
scoreboard players operation $_dec_val2 _anim /= $100 _anim
scoreboard players operation $_dec_val3 _anim /= $10 _anim
function anim_edit:gui/editor/value_editor/get_decimals/loop
execute if score $_dec_val3 _anim matches 0 if score $_dec_val4 _anim matches 0 run scoreboard players reset $_dec_val3 _anim
execute if score $_dec_val4 _anim matches 0 run scoreboard players reset $_dec_val4 _anim
scoreboard players reset $_dec_val _anim