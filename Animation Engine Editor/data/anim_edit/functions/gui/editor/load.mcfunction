function anim_edit:kill_nbt_as
scoreboard players set @s _anim_menu 7
#
#>Keyframe Editor render
#
#>Prepare tellraw holder
data remove storage anim:editor tellraw_data
data modify storage anim:editor tellraw_data.keyframes set value []
#Load anim keyframes
function anim_edit:get_anim_keyframes
#>Editor GUI
execute unless score @s _anim_row_page matches 1.. run scoreboard players set @s _anim_row_page 1
scoreboard players set $_get_part _anim -1
scoreboard players operation $_get_part _anim += @s _anim_row_page
scoreboard players set $_render_row _anim 1
#Row 1
execute if score @s _anim_row_page matches 2.. run data modify storage anim:editor after_render_tellraw set value '{"text":"↑","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"View up\\n","color":"yellow"},{"text":"Moves rows down by 1 row on the display,\\nallowing you to view rows above the\\ncurrent ones displayed","color":"white"}]},"clickEvent":{"action":"run_command","value":"/execute if score @s _anim_row_page matches 2.. run function anim_edit:gui/editor/keyframe_editor/page/up"}}'
execute if score @s _anim_row_page matches 1 run data modify storage anim:editor after_render_tellraw set value '{"text":"↑","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"View up\\n","color":"yellow"},{"text":"Moves rows down by 1 row on the display,\\nallowing you to view rows above the\\ncurrent ones displayed","color":"white"}]}}'
function anim_edit:gui/editor/keyframe_editor/render_row
#Row 2
scoreboard players add $_render_row _anim 1
scoreboard players add $_get_part _anim 1
data modify storage anim:editor after_render_tellraw set value '{"text":"↓","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"View down\\n","color":"yellow"},{"text":"Moves rows up by 1 row on the display,\\nallowing you to view rows below the\\ncurrent ones displayed","color":"white"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/down"}}'
function anim_edit:gui/editor/keyframe_editor/render_row
#Row 3
scoreboard players add $_render_row _anim 1
scoreboard players add $_get_part _anim 1
function anim_edit:gui/editor/keyframe_editor/render_row
#Row 4
scoreboard players add $_render_row _anim 1
scoreboard players add $_get_part _anim 1
function anim_edit:gui/editor/keyframe_editor/render_row
#Row 5
scoreboard players add $_render_row _anim 1
scoreboard players add $_get_part _anim 1
function anim_edit:gui/editor/keyframe_editor/render_row
#Row 6
scoreboard players add $_render_row _anim 1
scoreboard players add $_get_part _anim 1
function anim_edit:gui/editor/keyframe_editor/render_row
#Row 7
scoreboard players add $_render_row _anim 1
scoreboard players add $_get_part _anim 1
function anim_edit:gui/editor/keyframe_editor/render_row

function anim_edit:get_move_shortcuts
#>Buttons
execute store result score $_edit_remove1 _anim run data get storage anim:editor value_move_shortcuts.remove1
execute store result score $_edit_remove2 _anim run data get storage anim:editor value_move_shortcuts.remove2
execute if score @s _anim_page matches 1 run data modify storage anim:editor tellraw_data.shortcuts_move set value '[" ",{"text":"|<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]}}," ",{"text":"<<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]}}," ",{"text":"<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}]'
execute if score @s _anim_page matches 2.. if score @s _anim_page <= $_edit_remove1 _anim if score @s _anim_page <= $_edit_remove2 _anim run data modify storage anim:editor tellraw_data.shortcuts_move set value '[" ",{"text":"|<","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]}}," ",{"text":"<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}]'
execute if score @s _anim_page matches 2.. if score @s _anim_page > $_edit_remove1 _anim if score @s _anim_page <= $_edit_remove2 _anim run data modify storage anim:editor tellraw_data.shortcuts_move set value '[" ",{"text":"|<","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]}}," ",{"text":"<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left1"}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}]'
execute if score @s _anim_page matches 2.. if score @s _anim_page <= $_edit_remove1 _anim if score @s _anim_page > $_edit_remove2 _anim run data modify storage anim:editor tellraw_data.shortcuts_move set value '[" ",{"text":"|<","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left2"}}," ",{"text":"<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}]'
execute if score @s _anim_page matches 2.. if score @s _anim_page > $_edit_remove1 _anim if score @s _anim_page > $_edit_remove2 _anim run data modify storage anim:editor tellraw_data.shortcuts_move set value '[" ",{"text":"|<","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left2"}}," ",{"text":"<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left1"}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}]'
scoreboard players reset $_edit_remove1 _anim
scoreboard players reset $_edit_remove2 _anim
#
#>Notification
#
#Remove 11th notification from the list so it limits to 10
execute store result score $_notif_length _anim run data get storage anim:editor console[0].length
data modify storage anim:editor notification_dec set value []
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "====="
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "====="
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "====="
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "====="
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "====="
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..35 run data modify storage anim:editor notification_dec append value "=="
execute if score $_notif_length _anim matches ..35 run scoreboard players add $_notif_length _anim 2
execute if score $_notif_length _anim matches ..35 run data modify storage anim:editor notification_dec append value "=="
execute if score $_notif_length _anim matches ..35 run scoreboard players add $_notif_length _anim 2
execute if score $_notif_length _anim matches ..36 run data modify storage anim:editor notification_dec append value "="
execute if score $_notif_length _anim matches ..36 run scoreboard players add $_notif_length _anim 1

#
#>Value Editor render
#
scoreboard players reset $_key_selected _anim
execute if score @s _anim_editor_col matches 1.. if score @s _anim_idb_select matches 1.. run scoreboard players set $_key_selected _anim 1
execute unless score @s _anim_tab matches 1..10 run scoreboard players set @s _anim_tab 1
execute unless score $_key_selected _anim matches 1 run function anim_edit:gui/editor/value_editor/tab/non_selected
execute if score $_key_selected _anim matches 1 if score @s _anim_tab matches 1..8 run function anim_edit:gui/editor/value_editor/tab/render_value_edit
execute if score $_key_selected _anim matches 1 if score @s _anim_tab matches 9 run function anim_edit:gui/editor/value_editor/tab/extra
execute if score $_key_selected _anim matches 1 if score @s _anim_tab matches 10 run function anim_edit:gui/editor/value_editor/tab/extra_2
scoreboard players reset $_custom_as_exists _anim

function anim_edit:gui/editor/value_editor/menu

#>Live preview
# Get Armor Stand
function anim_edit:search_part
#FIX: Multiselect support
execute as @e[tag=anim_part_select] if score @s _anim_idb = @s _anim_idb_select run function anim_edit:gui/editor/value_editor/live_preview

#>Display tellraw data (for instant display) WARNING: HUGE COMMAND IN THE FUNCTION BELOW
function anim_edit:gui/editor/keyframe_editor/render_all
#notification remove to limit and other stuff
data remove storage anim:editor console[10]
data remove storage anim:editor notification_dec

# tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
# #title
# tellraw @s ["",{"text":"Editor","underlined": true}," ",{"nbt":"ver","storage":"anim:editor","color":"green"}," ",{"text":"[Settings]","color":"gray","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/settings/load"}}," ",{"text":"[Close]","color":"red","clickEvent": {"action": "run_command","value":"/function anim_edit:gui/editor/close"}}]
# #keyframes
# function anim_edit:gui/editor/keyframe_editor/display_row_col
# #move shortcuts
# tellraw @s {"nbt":"tellraw_data.shortcuts_move","storage":"anim:editor","interpret":true}
# #Notification
# tellraw @s [{"text":"===","color":"dark_gray","hoverEvent": {"action": "show_text","contents":[{"text":"","color":"white"},{"text":"Latest console log\n","color":"yellow"},{"nbt":"console[0].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[1].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[2].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[3].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[4].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[5].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[6].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[7].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[8].log","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[9].log","storage":"anim:editor","interpret":true}]}},{"nbt":"console[0].log","storage":"anim:editor","interpret":true},{"nbt":"notification_dec[0]","storage":"anim:editor"},{"nbt":"notification_dec[1]","storage":"anim:editor"},{"nbt":"notification_dec[2]","storage":"anim:editor"},{"nbt":"notification_dec[3]","storage":"anim:editor"},{"nbt":"notification_dec[4]","storage":"anim:editor"},{"nbt":"notification_dec[5]","storage":"anim:editor"},{"nbt":"notification_dec[6]","storage":"anim:editor"},{"nbt":"notification_dec[7]","storage":"anim:editor"}]
