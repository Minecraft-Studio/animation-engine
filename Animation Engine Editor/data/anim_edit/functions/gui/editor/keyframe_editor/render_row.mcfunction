scoreboard players operation $_get_anim _anim = @s _anim_anim_id
scoreboard players set $_get_tick _anim 0
data modify storage anim:editor col_preview_append set value {}
execute store result storage anim:editor col_preview_append.tick int 1 run scoreboard players operation $_get_tick _anim += @s _anim_page
function anim_edit:gui/editor/keyframe_editor/tick_to_sec
execute store result storage anim:editor col_preview_append.sec1 int 1 run scoreboard players get $_sec1 _anim
execute store result storage anim:editor col_preview_append.sec2 int 1 run scoreboard players get $_sec2 _anim
execute store result storage anim:editor col_preview_append.sec3 int 1 run scoreboard players get $_sec3 _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run scoreboard players set $_part_exists _anim 1
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run data modify storage anim:editor row_name set from entity @s CustomName
#Get 1-20 column data
data modify storage anim:editor row_result set value []
scoreboard players set $_render_col _anim 1
#Calc tick preview only when it's rendering first time
execute if score $_render_row _anim matches 1 run data modify storage anim:editor col_preview set value []
execute if score $_render_row _anim matches 1 run data modify storage anim:editor col_preview append from storage anim:editor col_preview_append
function anim_edit:search_model
execute unless score $_get_part _anim matches 0 if score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_name set value '{"color":"aqua","text":""}'
execute unless score $_get_part _anim matches 0 if score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_color set value '{"color":"aqua","text":""}'
execute unless score $_get_part _anim matches 0 if score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text1 set value '{"color":"yellow","text":""}'
execute unless score $_get_part _anim matches 0 if score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text1_name set from storage anim:editor row_name
execute unless score $_get_part _anim matches 0 if score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text1_id set value ''
execute unless score $_get_part _anim matches 0 unless score $_part_exists _anim matches 1 store result storage anim:editor tellraw_data.keyframes_prepare.row_number_text1_id int 1 run scoreboard players get $_get_part _anim
execute unless score $_get_part _anim matches 0 unless score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text1 set value '{"text":"No anim part with id of ","color":"gray"}'
execute unless score $_get_part _anim matches 0 unless score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text1_name set value ''
execute unless score $_get_part _anim matches 0 unless score $_part_exists _anim matches 1 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_color set value '{"color":"dark_gray","text":""}'
execute unless score $_get_part _anim matches 0 if score $_get_part _anim matches ..9 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text2 set value '  '
execute unless score $_get_part _anim matches 0 if score $_get_part _anim matches 10..99 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text2 set value ' '
execute unless score $_get_part _anim matches 0 if score $_get_part _anim matches 100.. run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text2 set value ''
execute if score $_get_part _anim matches 0 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_color set value '{"color":"aqua","text":""}'
execute if score $_get_part _anim matches 0 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_text1 set value '{"color":"yellow","text":"Anim Main"}'
function anim_edit:gui/editor/keyframe_editor/render_col
# execute if score $_part_exists _anim matches 1 if score $_get_part _anim matches ..9 run data modify storage anim:editor row_number set value '[{"nbt":"tellraw_data.keyframes[0].row_number_digit","storage":"anim:editor","color":"aqua","hoverEvent":{"action":"show_text","contents":{"color":"yellow","nbt":"tellraw_data.keyframes[0].row_name","storage":"anim:editor","interpret":true}}},"  "]'
# execute if score $_part_exists _anim matches 1 if score $_get_part _anim matches 10..99 run data modify storage anim:editor row_number set value '[{"nbt":"tellraw_data.keyframes[0].row_number_digit","storage":"anim:editor","color":"aqua","hoverEvent":{"action":"show_text","contents":{"color":"yellow","nbt":"tellraw_data.keyframes[0].row_name","storage":"anim:editor","interpret":true}}}," "]'
# execute if score $_part_exists _anim matches 1 if score $_get_part _anim matches 100.. run data modify storage anim:editor row_number set value '{"nbt":"tellraw_data.keyframes[0].row_number_digit","storage":"anim:editor","color":"aqua","hoverEvent":{"action":"show_text","contents":{"color":"yellow","nbt":"tellraw_data.keyframes[0].row_name","storage":"anim:editor","interpret":true}}}'
# execute unless score $_part_exists _anim matches 1 if score $_get_part _anim matches ..9 run data modify storage anim:editor row_number set value '[{"nbt":"tellraw_data.keyframes[0].row_number_digit","storage":"anim:editor","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"No anim part with id of ","color":"gray"},{"score":{"name":"$_get_part","objective":"_anim"}}]}},"  "]'
# execute unless score $_part_exists _anim matches 1 if score $_get_part _anim matches 10..99 run data modify storage anim:editor row_number set value '[{"nbt":"tellraw_data.keyframes[0].row_number_digit","storage":"anim:editor","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"No anim part with id of ","color":"gray"},{"score":{"name":"$_get_part","objective":"_anim"}}]}}," "]'
# execute unless score $_part_exists _anim matches 1 if score $_get_part _anim matches 100.. run data modify storage anim:editor row_number set value '{"nbt":"tellraw_data.keyframes[0].row_number_digit","storage":"anim:editor","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"No anim part with id of ","color":"gray"},{"score":{"name":"$_get_part","objective":"_anim"}}]}}'
data modify storage anim:editor tellraw_data.keyframes_prepare.row_name set from storage anim:editor row_name
execute unless score $_get_part _anim matches 0 store result storage anim:editor tellraw_data.keyframes_prepare.row_number_digit int 1 run scoreboard players get $_get_part _anim
execute if score $_get_part _anim matches 0 run data modify storage anim:editor tellraw_data.keyframes_prepare.row_number_digit set value '{"text":"M"}'
data modify storage anim:editor tellraw_data.keyframes_prepare.row_result set from storage anim:editor row_result
data modify storage anim:editor tellraw_data.keyframes_prepare.col_preview set from storage anim:editor col_preview
data modify storage anim:editor tellraw_data.keyframes_prepare.after_render_tellraw set from storage anim:editor after_render_tellraw
data modify storage anim:editor tellraw_data.keyframes append from storage anim:editor tellraw_data.keyframes_prepare
data remove storage anim:editor tellraw_data.keyframes_prepare

data remove storage anim:editor row_result
data remove storage anim:editor after_render_tellraw
scoreboard players reset $_part_exists _anim
data remove storage anim:editor row_name