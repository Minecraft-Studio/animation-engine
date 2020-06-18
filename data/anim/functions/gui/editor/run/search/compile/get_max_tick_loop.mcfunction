scoreboard players reset $_keyframe_empty _anim
execute store result score $_comp_m_t _anim run data get storage anim:editor search[0].tick
#check if it's empty
execute store result score $_emp_head _anim run data get storage anim:editor search[0].rotate.head
execute store result score $_emp_body _anim run data get storage anim:editor search[0].rotate.body
execute store result score $_emp_r_arm _anim run data get storage anim:editor search[0].rotate.r_arm
execute store result score $_emp_l_arm _anim run data get storage anim:editor search[0].rotate.l_arm
execute store result score $_emp_r_leg _anim run data get storage anim:editor search[0].rotate.r_leg
execute store result score $_emp_l_leg _anim run data get storage anim:editor search[0].rotate.l_leg
execute store result score $_emp_pos _anim run data get storage anim:editor search[0].rotate.pos
execute store result score $_emp_extra _anim run data get storage anim:editor search[0].rotate.extra
# set value $_keyframe_empty _anim to 1 if the keyframe data is empty
execute if score $_emp_head _anim matches 0 if score $_emp_body _anim matches 0 if score $_emp_r_arm _anim matches 0 if score $_emp_l_arm _anim matches 0 if score $_emp_r_leg _anim matches 0 if score $_emp_l_leg _anim matches 0 if score $_emp_pos _anim matches 0 if score $_emp_extra _anim matches 0 run scoreboard players set $_keyframe_empty _anim 1
execute if score $_comp_m_t _anim matches 0 run scoreboard players set $_keyframe_empty _anim 1

execute unless score $_keyframe_empty _anim matches 1 if score $_comp_m_t _anim > $comp_max_t _anim run scoreboard players operation $comp_max_t _anim = $_comp_m_t _anim
execute unless score $_keyframe_empty _anim matches 1 run data modify storage anim:editor result append from storage anim:editor search[0]
execute unless score $_keyframe_empty _anim matches 1 run scoreboard players add $comp_keyf _anim 1
execute if score $_keyframe_empty _anim matches 0 run scoreboard players add $comp_del_keyf _anim 1
execute if score $_keyframe_empty _anim matches 0 run tellraw @p[tag=anim_user] ["",{"text":"Deleted a bad keyframe ","color":"red"},{"text":"[Data]","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"nbt":"search[0]","storage":"anim:editor","color":"gray"}]}}]
data remove storage anim:editor search[0]
#continue the loop
execute if data storage anim:editor search[] run function anim:gui/editor/run/search/compile/get_max_tick_loop