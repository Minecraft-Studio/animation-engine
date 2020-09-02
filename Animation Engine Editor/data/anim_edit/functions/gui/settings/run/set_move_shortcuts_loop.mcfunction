#
#>Sets settings for adding values in value editor
scoreboard players reset $_got_p_od _anim
data modify storage anim:editor output_move_shortcuts set value []
execute unless data storage anim:editor search_move_shortcuts run data modify storage anim:editor search_move_shortcuts set from storage anim:editor move_shortcuts
execute store result score $_got_p_id _anim run data get storage anim:editor search_move_shortcuts[0].id
tellraw @p {"nbt":"search_move_shortcuts[0]","storage":"anim:editor","color":"red"}
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.remove2 store result storage anim:editor search_move_shortcuts[0].remove2 int 1 run scoreboard players get $_dec_val _anim
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.remove1 store result storage anim:editor search_move_shortcuts[0].remove1 int 1 run scoreboard players get $_dec_val _anim
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.add1 store result storage anim:editor search_move_shortcuts[0].add1 int 1 run scoreboard players get $_dec_val _anim
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.add2 store result storage anim:editor search_move_shortcuts[0].add2 int 1 run scoreboard players get $_dec_val _anim
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.add3 store result storage anim:editor search_move_shortcuts[0].add3 int 1 run scoreboard players get $_dec_val _anim
tellraw @p {"nbt":"search_move_shortcuts[0]","storage":"anim:editor","color":"green"}
data modify storage anim:editor output_move_shortcuts append from storage anim:editor search_move_shortcuts[0]
data remove storage anim:editor search_move_shortcuts[0]

execute if data storage anim:editor search_move_shortcuts[0] run function anim_edit:gui/settings/run/set_move_shortcuts_loop
data remove storage anim:editor search_move_shortcuts