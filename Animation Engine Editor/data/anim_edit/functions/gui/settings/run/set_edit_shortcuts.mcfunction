#
#>Sets settings for adding values in value editor
scoreboard players reset $_got_p_od _anim
data modify storage anim:editor output_edit_shortcuts set value []
data modify storage anim:editor import_edit_shortcuts set value [0,0,0,0,0]
execute unless data storage anim:editor search_edit_shortcuts run data modify storage anim:editor search_edit_shortcuts set from storage anim:editor edit_shortcuts
execute store result score $_got_p_id _anim run data get storage anim:editor search_edit_shortcuts[0].id
tellraw @p {"score":{"name":"$_dec_val1","objective":"_anim"}}
tellraw @p {"score":{"name":"$_dec_val2","objective":"_anim"}}
tellraw @p {"score":{"name":"$_dec_val3","objective":"_anim"}}
tellraw @p {"score":{"name":"$_dec_val4","objective":"_anim"}}
tellraw @p {"nbt":"import_edit_shortcuts","storage":"anim:editor"}
execute if score $_got_p_id _anim = $_p_id _anim store result storage anim:editor import_edit_shortcuts[0] int 1 run scoreboard players get $_dec_val_ _anim
execute if score $_got_p_id _anim = $_p_id _anim store result storage anim:editor import_edit_shortcuts[1] int 1 run scoreboard players get $_dec_val1 _anim
execute if score $_got_p_id _anim = $_p_id _anim store result storage anim:editor import_edit_shortcuts[2] int 1 run scoreboard players get $_dec_val2 _anim
execute if score $_got_p_id _anim = $_p_id _anim store result storage anim:editor import_edit_shortcuts[3] int 1 run scoreboard players get $_dec_val3 _anim
execute if score $_got_p_id _anim = $_p_id _anim store result storage anim:editor import_edit_shortcuts[4] int 1 run scoreboard players get $_dec_val4 _anim
execute if score $_got_p_id _anim = $_p_id _anim run tellraw @p {"nbt":"import_edit_shortcuts","storage":"anim:editor","color":"red"}
execute if score $_got_p_id _anim = $_p_id _anim if score $_dec_val3 _anim matches 0 if score $_dec_val4 _anim matches 0 run data remove storage anim:editor import_edit_shortcuts[3]
execute if score $_got_p_id _anim = $_p_id _anim if score $_dec_val4 _anim matches 0 run data remove storage anim:editor import_edit_shortcuts[4]
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.remove3 run data modify storage anim:editor search_edit_shortcuts[0].remove3 set from storage anim:editor import_edit_shortcuts
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.remove2 run data modify storage anim:editor search_edit_shortcuts[0].remove2 set from storage anim:editor import_edit_shortcuts
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m.remove1 run data modify storage anim:editor search_edit_shortcuts[0].remove1 set from storage anim:editor import_edit_shortcuts
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.p.add1 run data modify storage anim:editor search_edit_shortcuts[0].add1 set from storage anim:editor import_edit_shortcuts
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.p.add2 run data modify storage anim:editor search_edit_shortcuts[0].add2 set from storage anim:editor import_edit_shortcuts
execute if score $_got_p_id _anim = $_p_id _anim if data entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.p.add3 run data modify storage anim:editor search_edit_shortcuts[0].add3 set from storage anim:editor import_edit_shortcuts
data modify storage anim:editor output_edit_shortcuts append from storage anim:editor search_edit_shortcuts[0]
data remove storage anim:editor search_edit_shortcuts[0]

execute if data storage anim:editor search_edit_shortcuts[0] run function anim_edit:gui/settings/run/set_edit_shortcuts
data remove storage anim:editor search_edit_shortcuts
# data remove storage anim:editor import_edit_shortcuts