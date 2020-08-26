#
#>Keyframe Editor render
#
#>Title
tellraw @s ["",{"text":"Editor","underlined": true}," ",{"nbt":"ver","storage":"anim:editor","color":"aqua"}," ",{"text":"[Close]","color":"red","clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/menu3/close"}}]
#>Editor GUI


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
scoreboard objectives add _anim_notif0 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[0][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif0 1
scoreboard objectives add _anim_notif1 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[1][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif1 1
scoreboard objectives add _anim_notif2 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[2][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif2 1
scoreboard objectives add _anim_notif3 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[3][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif3 1
scoreboard objectives add _anim_notif4 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[4][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif4 1
scoreboard objectives add _anim_notif5 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[5][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif5 1
scoreboard objectives add _anim_notif6 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[6][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif6 1
scoreboard objectives add _anim_notif7 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[7][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif7 1
scoreboard objectives add _anim_notif8 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[8][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif8 1
scoreboard objectives add _anim_notif9 dummy
execute store result score $_notif_lookfor _anim run data get storage anim:editor console[9][1]
execute as @a if score $_notif_lookfor _anim = @s _anim_id_player run scoreboard players set @s _anim_notif9 1
tellraw @s [{"text":"---","color":"gray","hoverEvent": {"action": "show_text","contents":[{"text":"","color":"white"},{"text":"Latest console log\n","color":"yellow"},{"selector":"@e[scores={_anim_notif0=1}]"},{"nbt":"console[0][2]","storage":"anim:editor"},{"nbt":"console[0][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif1=1}]"},{"nbt":"console[1][2]","storage":"anim:editor"},{"nbt":"console[1][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif2=1}]"},{"nbt":"console[2][2]","storage":"anim:editor"},{"nbt":"console[2][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif3=1}]"},{"nbt":"console[3][2]","storage":"anim:editor"},{"nbt":"console[3][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif4=1}]"},{"nbt":"console[4][2]","storage":"anim:editor"},{"nbt":"console[4][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif5=1}]"},{"nbt":"console[5][2]","storage":"anim:editor"},{"nbt":"console[5][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif6=1}]"},{"nbt":"console[6][2]","storage":"anim:editor"},{"nbt":"console[6][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif7=1}]"},{"nbt":"console[7][2]","storage":"anim:editor"},{"nbt":"console[7][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif8=1}]"},{"nbt":"console[8][2]","storage":"anim:editor"},{"nbt":"console[8][0]","storage":"anim:editor","interpret":true},"\n",{"selector":"@e[scores={_anim_notif9=1}]"},{"nbt":"console[9][2]","storage":"anim:editor"},{"nbt":"console[9][0]","storage":"anim:editor","interpret":true}]}},{"selector":"@e[scores={_anim_notif0=1}]"},{"nbt":"console[0][2]","storage":"anim:editor"},{"nbt":"console[0][0]","storage":"anim:editor","interpret":true},{"nbt":"notification_dec[0]","storage":"anim:editor"},{"nbt":"notification_dec[1]","storage":"anim:editor"},{"nbt":"notification_dec[2]","storage":"anim:editor"},{"nbt":"notification_dec[3]","storage":"anim:editor"},{"nbt":"notification_dec[4]","storage":"anim:editor"},{"nbt":"notification_dec[5]","storage":"anim:editor"},{"nbt":"notification_dec[6]","storage":"anim:editor"},{"nbt":"notification_dec[7]","storage":"anim:editor"}]
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