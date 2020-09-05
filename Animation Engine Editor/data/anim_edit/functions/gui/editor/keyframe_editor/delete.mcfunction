function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_editor_row
scoreboard players set $_delete_keyframe _anim 1
function anim_edit:set_anim_keyframe
scoreboard players reset $_delete_keyframe _anim

#console
tag @s add anim_console_add
data modify storage anim:editor import_console.length set value 30
function anim_edit:get_free_block
execute as @e[tag=anim_free_block] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","color":"red"},{"selector":"@a[tag=anim_console_add]"},{"text":" deleted a keyframe to "},{"score":{"name":"$_sel_row","objective":"_anim"}},":",{"score":{"name":"$_sel_col","objective":"_anim"}}]'}
execute as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run data modify storage anim:editor import_console.log set from block ~ ~ ~ Text1 
execute as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
kill @e[tag=anim_free_block]
execute if score $_sign_placed _anim matches 1 run data modify storage anim:editor console insert 0 from storage anim:editor import_console 
scoreboard players reset $_sign_placed _anim
tag @s remove anim_console_add

function anim_edit:gui/main/load