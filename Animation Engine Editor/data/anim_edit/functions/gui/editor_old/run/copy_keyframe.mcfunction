#Copies selected keyframe
# checks if a keyframe is selected
execute if entity @e[type=armor_stand,tag=anim_editor_sel] run scoreboard players set $_copy_sel_exists _anim 1
# selects every selected keyframe and checks for real one
# (should be only 1 selected, but in case it is not,
# it copies data only from 1 that matches with data in _anim objective)
execute as @e[type=armor_stand,tag=anim_editor_sel] if score @s _anim_editor_col = $_sel_col _anim if score @s _anim_editor_row = $_sel_row _anim run data modify storage anim:editor clipboard set from storage anim:editor current_keyframe
data remove storage anim:editor clipboard.tick
data remove storage anim:editor clipboard.part
execute if score $_copy_sel_exists _anim matches 1 run scoreboard players operation $_tmp_copy_calc _anim = $_sel_col _anim
execute if score $_copy_sel_exists _anim matches 1 run scoreboard players operation $_tmp_copy_calc _anim += $page _anim
execute if score $_copy_sel_exists _anim matches 1 run function anim_edit:gui/editor/load
execute if score $_copy_sel_exists _anim matches 1 run tellraw @p[tag=anim_user] ["",{"text":"Keyframe ","color":"green"},{"score":{"name":"$_tmp_copy_calc","objective":"_anim"},"color":"dark_green"},{"text":" in part ","color":"green"},{"score":{"name":"$_sel_row","objective":"_anim"},"color":"dark_green"},{"text":" copied to the clipboard! ","color":"green"},{"text":"[Copied Data]","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"nbt":"clipboard","storage":"anim:editor","color":"gray"}]}}]
execute unless score $_copy_sel_exists _anim matches 1 run tellraw @p[tag=anim_user] {"text":"No keyframe is selected","color":"red"}
scoreboard players reset $_copy_sel_exists _anim

function anim_edit:gamerule