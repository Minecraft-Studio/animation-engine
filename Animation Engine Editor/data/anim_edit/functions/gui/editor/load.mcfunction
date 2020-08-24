#
#>Keyframe Editor render
#

#
#>Notification
#
# Remove 11th notification from the list so it limits to 10
execute store result score $_notif_length _anim run data get storage anim:editor console_length
data modify storage anim:editor notification_dec set value []
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "-----"
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "-----"
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "-----"
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "-----"
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..32 run data modify storage anim:editor notification_dec append value "-----"
execute if score $_notif_length _anim matches ..32 run scoreboard players add $_notif_length _anim 5
execute if score $_notif_length _anim matches ..35 run data modify storage anim:editor notification_dec append value "--"
execute if score $_notif_length _anim matches ..35 run scoreboard players add $_notif_length _anim 2
execute if score $_notif_length _anim matches ..35 run data modify storage anim:editor notification_dec append value "--"
execute if score $_notif_length _anim matches ..35 run scoreboard players add $_notif_length _anim 2
execute if score $_notif_length _anim matches ..36 run data modify storage anim:editor notification_dec append value "-"
execute if score $_notif_length _anim matches ..36 run scoreboard players add $_notif_length _anim 1
tellraw @p[tag=anim_user] [{"text":"---","color":"gray","hoverEvent": {"action": "show_text","contents":[{"text":"","color":"gray"},{"text":"Latest console log\n","color":"aqua"},{"nbt":"console[0]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[1]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[2]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[3]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[4]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[5]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[6]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[7]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[8]","storage":"anim:editor","interpret":true},"\n",{"nbt":"console[9]","storage":"anim:editor","interpret":true}]}},{"nbt":"console[0]","storage":"anim:editor","interpret":true},{"nbt":"notification_dec[0]","storage":"anim:editor"},{"nbt":"notification_dec[1]","storage":"anim:editor"},{"nbt":"notification_dec[2]","storage":"anim:editor"},{"nbt":"notification_dec[3]","storage":"anim:editor"},{"nbt":"notification_dec[4]","storage":"anim:editor"},{"nbt":"notification_dec[5]","storage":"anim:editor"},{"nbt":"notification_dec[6]","storage":"anim:editor"},{"nbt":"notification_dec[7]","storage":"anim:editor"}]
data remove storage anim:editor notification_dec


#
#>Value Editor render
#
execute unless score $_tab _anim matches 1..10 run scoreboard players set $_tab _anim 1
execute if score $_tab _anim matches 1..8 run function anim_edit:gui/editor/value_editor/tab/render_value_edit
execute if score $_tab _anim matches 9 run function anim_edit:gui/editor/value_editor/tab/extra
execute if score $_tab _anim matches 10 run function anim_edit:gui/editor/value_editor/tab/extra_2

#>Live preview
# Get Armor Stand
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = @e[type=armor_stand,tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_sel_row _anim run function anim_edit:gui/editor/value_editor/live_preview

function anim_edit:gui/editor/value_editor/menu
#>Gamerule
function anim_edit:gamerule