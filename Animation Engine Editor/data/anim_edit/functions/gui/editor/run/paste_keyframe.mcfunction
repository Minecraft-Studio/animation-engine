#Pastes a keyframe from clipboard
# checks if there is a keyframe saved in a clipboard
execute if data storage anim:editor clipboard run scoreboard players set $_tmp_clipboard_exists _anim 1
# checks if a keyframe is selected
execute if entity @e[type=armor_stand,tag=anim_editor_sel] run scoreboard players set $_paste_sel_exists _anim 1
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 run data modify storage anim:editor paste_old_keyframe set from storage anim:editor current_keyframe
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 run data modify storage anim:editor current_keyframe set from storage anim:editor clipboard
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 run tellraw @p[tag=anim_user] ["",{"text":"Pasted data to ","color":"aqua"},{"text":"keyframe ","color":"aqua"},{"score":{"name":"$_tmp_copy_calc","objective":"_anim"},"color":"dark_aqua"},{"text":" in part ","color":"aqua"},{"score":{"name":"$_sel_row","objective":"_anim"},"color":"dark_aqua"},{"text":" "},{"text":"[Old Data]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":["",{"nbt":"paste_old_keyframe","storage":"anim:editor","color":"gray"}]}},{"text":" "},{"text":"[New Data]","color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"nbt":"current_keyframe","storage":"anim:editor","color":"gray"}]}}]
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 run data remove storage anim:editor paste_old_keyframe
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 run function anim_edit:gui/editor/run/text/tab/rotate
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe
execute if score $_tmp_clipboard_exists _anim matches 1 if score $_paste_sel_exists _anim matches 1 run function anim_edit:gui/editor/run/search/load_all_keyframes/start
execute if score $_tmp_clipboard_exists _anim matches 0 run tellraw @p[tag=anim_user] {"text":"Nothing to paste","color":"red"}
execute if score $_paste_sel_exists _anim matches 0 run tellraw @p[tag=anim_user] {"text":"No keyframe is selected","color":"red"}
scoreboard players reset $_tmp_clipboard_exists _anim
scoreboard players reset $_paste_sel_exists _anim
