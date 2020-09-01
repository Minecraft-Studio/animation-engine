scoreboard players set @s _anim_menu 7
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
#
#>Keyframe Editor render
#
# Load anim keyframes
function anim_edit:get_anim_keyframes
#>Title
tellraw @s ["",{"text":"Editor","underlined": true}," ",{"nbt":"ver","storage":"anim:editor","color":"green"}," ",{"text":"[Close]","color":"red","clickEvent": {"action": "run_command","value":"/function anim_edit:gui/editor/close"}}]
#>Editor GUI
execute unless score @s _anim_row_page matches 1.. run scoreboard players set @s _anim_row_page 1
scoreboard players set $_get_part _anim 0
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
execute unless score @s _anim_multisel matches 1 run data modify storage anim:editor multiselect_btn set value '{"text":"[Multiselect]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Multiselect keyframes\\n","color":"yellow"},{"text":"Allows to select multiple keyframes\\nand edit them all at once","color":"white"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/multiselect"}}'
execute if score @s _anim_multisel matches 1 run data modify storage anim:editor multiselect_btn set value '{"text":"[Multiselect]","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Multiselect keyframes\\n","color":"yellow"},{"text":"Allows to select multiple keyframes\\nand edit them all at once","color":"white"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/multiselect"}}'
execute if score @s _anim_page matches 1 run tellraw @s [" ",{"text":"|<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]}}," ",{"text":"<<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]}}," ",{"text":"<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}," ",{"nbt":"multiselect_btn","storage":"anim:editor","interpret":true}]
execute if score @s _anim_page matches 2.. if score @s _anim_page <= $_edit_remove1 _anim if score @s _anim_page <= $_edit_remove2 _anim run tellraw @s [" ",{"text":"|<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]}}," ",{"text":"<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}," ",{"nbt":"multiselect_btn","storage":"anim:editor","interpret":true}]
execute if score @s _anim_page matches 2.. if score @s _anim_page > $_edit_remove1 _anim if score @s _anim_page <= $_edit_remove2 _anim run tellraw @s [" ",{"text":"|<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]}}," ",{"text":"<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left1"}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}," ",{"nbt":"multiselect_btn","storage":"anim:editor","interpret":true}]
execute if score @s _anim_page matches 2.. if score @s _anim_page <= $_edit_remove1 _anim if score @s _anim_page > $_edit_remove2 _anim run tellraw @s [" ",{"text":"|<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left2"}}," ",{"text":"<","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}," ",{"nbt":"multiselect_btn","storage":"anim:editor","interpret":true}]
execute if score @s _anim_page matches 2.. if score @s _anim_page > $_edit_remove1 _anim if score @s _anim_page > $_edit_remove2 _anim run tellraw @s [" ",{"text":"|<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Go to tick 1","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left3"}}," ",{"text":"<<","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove2","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left2"}}," ",{"text":"<","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.remove1","storage":"anim:editor"}," back"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/left1"}}," ",{"score":{"name":"@s","objective":"_anim_page"},"color":"white"}," ",{"text":">","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add1","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right1"}}," ",{"text":">>","color":"#ffd529","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add2","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right2"}}," ",{"text":">>>","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Move view by ","color":"yellow"},{"nbt":"value_move_shortcuts.add3","storage":"anim:editor"}," forward"]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/editor/keyframe_editor/page/right3"}}," ",{"nbt":"multiselect_btn","storage":"anim:editor","interpret":true}]
scoreboard players reset $_edit_remove1 _anim
scoreboard players reset $_edit_remove2 _anim
#
#>Notification
#
# Remove 11th notification from the list so it limits to 10
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
scoreboard objectives add _anim_notif0 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[0].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif0 1
scoreboard objectives add _anim_notif1 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[1].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif1 1
scoreboard objectives add _anim_notif2 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[2].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif2 1
scoreboard objectives add _anim_notif3 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[3].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif3 1
scoreboard objectives add _anim_notif4 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[4].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif4 1
scoreboard objectives add _anim_notif5 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[5].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif5 1
scoreboard objectives add _anim_notif6 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[6].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif6 1
scoreboard objectives add _anim_notif7 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[7].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif7 1
scoreboard objectives add _anim_notif8 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[8].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif8 1
scoreboard objectives add _anim_notif9 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[9].id
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif9 1
tellraw @s [{"text":"===","color":"dark_gray","hoverEvent": {"action": "show_text","contents":[{"text":"","color":"white"},{"text":"Latest console log\n","color":"yellow"},{"selector":"@e[scores={_anim_notif0=1}]"},{"nbt":"console[0].text","storage":"anim:editor"},{"nbt":"console[0].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif1=1}]"},{"nbt":"console[1].text","storage":"anim:editor"},{"nbt":"console[1].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif2=1}]"},{"nbt":"console[2].text","storage":"anim:editor"},{"nbt":"console[2].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif3=1}]"},{"nbt":"console[3].text","storage":"anim:editor"},{"nbt":"console[3].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif4=1}]"},{"nbt":"console[4].text","storage":"anim:editor"},{"nbt":"console[4].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif5=1}]"},{"nbt":"console[5].text","storage":"anim:editor"},{"nbt":"console[5].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif6=1}]"},{"nbt":"console[6].text","storage":"anim:editor"},{"nbt":"console[6].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif7=1}]"},{"nbt":"console[7].text","storage":"anim:editor"},{"nbt":"console[7].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif8=1}]"},{"nbt":"console[8].text","storage":"anim:editor"},{"nbt":"console[8].log","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif9=1}]"},{"nbt":"console[9].text","storage":"anim:editor"},{"nbt":"console[9].log","storage":"anim:editor","interpret":true}]}},{"selector":"@e[scores={_anim_notif0=1}]"},{"nbt":"console[0].text","storage":"anim:editor"},{"nbt":"console[0].log","storage":"anim:editor","interpret":true},{"nbt":"notification_dec[0]","storage":"anim:editor"},{"nbt":"notification_dec[1]","storage":"anim:editor"},{"nbt":"notification_dec[2]","storage":"anim:editor"},{"nbt":"notification_dec[3]","storage":"anim:editor"},{"nbt":"notification_dec[4]","storage":"anim:editor"},{"nbt":"notification_dec[5]","storage":"anim:editor"},{"nbt":"notification_dec[6]","storage":"anim:editor"},{"nbt":"notification_dec[7]","storage":"anim:editor"}]
data remove storage anim:editor console[10]
data remove storage anim:editor notification_dec
scoreboard objectives remove _anim_notif0
scoreboard objectives remove _anim_notif1
scoreboard objectives remove _anim_notif2
scoreboard objectives remove _anim_notif3
scoreboard objectives remove _anim_notif4
scoreboard objectives remove _anim_notif5
scoreboard objectives remove _anim_notif6
scoreboard objectives remove _anim_notif7
scoreboard objectives remove _anim_notif8
scoreboard objectives remove _anim_notif9

#
#>Value Editor render
#
function anim_edit:gui/editor/keyframe_editor/get_sel_keyframes
execute unless score $_tab _anim matches 1..10 run scoreboard players set $_tab _anim 1
execute if score $_tab _anim matches 1..8 run function anim_edit:gui/editor/value_editor/tab/render_value_edit
execute if score $_tab _anim matches 9 run function anim_edit:gui/editor/value_editor/tab/extra
execute if score $_tab _anim matches 10 run function anim_edit:gui/editor/value_editor/tab/extra_2

#>Live preview
# Get Armor Stand
function anim_edit:search_part_editor
#FIX: Multiselect support
execute as @e[tag=anim_part_select] if score @s _anim_idb = $_sel_row _anim run function anim_edit:gui/editor/value_editor/live_preview

function anim_edit:gui/editor/value_editor/menu
#>Gamerule
function anim_edit:gamerule