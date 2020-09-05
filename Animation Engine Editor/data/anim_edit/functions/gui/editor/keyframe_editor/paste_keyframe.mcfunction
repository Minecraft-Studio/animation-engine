function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_editor_row
function anim_edit:get_anim_keyframe
function anim_edit:get_clipboard
data modify storage anim:editor current_keyframe set from storage anim:editor clipboard.data
execute store result storage anim:editor current_keyframe.tick int 1 run scoreboard players get @s _anim_editor_col 
execute store result storage anim:editor current_keyframe.part int 1 run scoreboard players get @s _anim_editor_row 
function anim_edit:set_anim_keyframe

#console
tag @s add anim_console_add
data modify storage anim:editor import_console.length set value 29
function anim_edit:get_free_block
execute as @e[tag=anim_free_block] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ oak_sign{Text1:'["",{"selector":"@a[tag=anim_console_add]"},{"text":" pasted a keyframe to "},{"score":{"name":"$_sel_row","objective":"_anim"}},":",{"score":{"name":"$_sel_col","objective":"_anim"}}]'}
execute as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run data modify storage anim:editor import_console.log set from block ~ ~ ~ Text1 
execute as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
kill @e[tag=anim_free_block]
execute if score $_sign_placed _anim matches 1 run data modify storage anim:editor console insert 0 from storage anim:editor import_console 
scoreboard players reset $_sign_placed _anim
tag @s remove anim_console_add

function anim_edit:gui/main/load