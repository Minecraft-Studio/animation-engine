#
#>Converts ticks to seconds (positive only)
# Input: $_get_tick
# Output: $_sec1; $_sec2; $_sec3
execute unless score $_tick_to_sec _anim matches 1.. run scoreboard players set $_sec1 _anim 0
execute unless score $_tick_to_sec _anim matches 1.. run scoreboard players set $_sec2 _anim 0
execute unless score $_tick_to_sec _anim matches 1.. run scoreboard players set $_sec3 _anim 0
execute unless score $_tick_to_sec _anim matches 1.. run scoreboard players operation $_tick_to_sec _anim = $_get_tick _anim
execute if score $_tick_to_sec _anim matches 20.. unless score $_sec1 _anim matches 1.. run scoreboard players set $_sec1_set _anim 1
execute if score $_tick_to_sec _anim matches 20.. if score $_sec1_set _anim matches 1 run scoreboard players operation $_sec1 _anim = $_tick_to_sec _anim
execute if score $_tick_to_sec _anim matches 20.. if score $_sec1_set _anim matches 1 run scoreboard players operation $_sec1 _anim /= $20 _anim
execute if score $_tick_to_sec _anim matches 20.. if score $_sec1_set _anim matches 1 run scoreboard players reset $_sec1_set _anim
execute if score $_tick_to_sec _anim matches 1000.. run scoreboard players remove $_tick_to_sec _anim 1000
execute if score $_tick_to_sec _anim matches 100.. run scoreboard players remove $_tick_to_sec _anim 100
execute if score $_tick_to_sec _anim matches 100.. run scoreboard players remove $_tick_to_sec _anim 100
execute if score $_tick_to_sec _anim matches 100.. run scoreboard players remove $_tick_to_sec _anim 100
execute if score $_tick_to_sec _anim matches 100.. run scoreboard players remove $_tick_to_sec _anim 100
execute if score $_tick_to_sec _anim matches 100.. run scoreboard players remove $_tick_to_sec _anim 100
execute if score $_tick_to_sec _anim matches 20.. run scoreboard players remove $_tick_to_sec _anim 20
execute if score $_tick_to_sec _anim matches 20.. run scoreboard players remove $_tick_to_sec _anim 20
execute if score $_tick_to_sec _anim matches 20.. run scoreboard players remove $_tick_to_sec _anim 20
execute if score $_tick_to_sec _anim matches 20.. run scoreboard players remove $_tick_to_sec _anim 20
execute if score $_tick_to_sec _anim matches 20.. run scoreboard players remove $_tick_to_sec _anim 20
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 10.. run scoreboard players add $_sec2 _anim 5
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 10.. run scoreboard players remove $_tick_to_sec _anim 10
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 4.. run scoreboard players add $_sec2 _anim 2
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 4.. run scoreboard players remove $_tick_to_sec _anim 4
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 4.. run scoreboard players add $_sec2 _anim 2
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 4.. run scoreboard players remove $_tick_to_sec _anim 4
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 2.. run scoreboard players add $_sec2 _anim 1
execute if score $_tick_to_sec _anim matches ..19 if score $_tick_to_sec _anim matches 2.. run scoreboard players remove $_tick_to_sec _anim 2
execute if score $_tick_to_sec _anim matches 1 run scoreboard players add $_sec3 _anim 5
execute if score $_tick_to_sec _anim matches 1 run scoreboard players remove $_tick_to_sec _anim 1

execute if score $_tick_to_sec _anim matches 1.. run function anim_edit:gui/editor/keyframe_editor/tick_to_sec
scoreboard players reset $_tick_to_sec _anim
