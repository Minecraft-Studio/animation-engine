scoreboard players remove $_sel_col _anim 1
scoreboard players remove $_sel_row _anim 1
scoreboard players operation $_sel_col _anim += @s _anim_page
scoreboard players operation $_sel_row _anim += @s _anim_row_page

function anim_edit:gui/editor/keyframe_editor/get_sel_keyframes

#checks if the selected keyframe is already selected, if yes deselect it
scoreboard players reset $_key_selected _anim
execute if score $_sel_col _anim = @s _anim_editor_col if score $_sel_row _anim = @s _anim_idb_select run scoreboard players set $_key_selected _anim 1
execute if score $_key_selected _anim matches 1 run scoreboard players reset @s _anim_editor_col
execute if score $_key_selected _anim matches 1 run scoreboard players reset @s _anim_idb_select
execute unless score $_key_selected _anim matches 1 run scoreboard players operation @s _anim_editor_col = $_sel_col _anim
execute unless score $_key_selected _anim matches 1 run scoreboard players operation @s _anim_idb_select = $_sel_row _anim

#console
execute unless score $_key_selected _anim matches 1 run tag @s add anim_console_add
execute unless score $_key_selected _anim matches 1 run data modify storage anim:editor import_console.length set value 25
execute unless score $_key_selected _anim matches 1 run function anim_edit:get_free_block
execute unless score $_key_selected _anim matches 1 as @e[tag=anim_free_block] at @s if block ~ ~ ~ air run scoreboard players set $_sign_placed _anim 1
execute unless score $_key_selected _anim matches 1 as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ oak_sign{Text1:'["",{"selector":"@a[tag=anim_console_add]"},{"text":" opened keyframe "},{"score":{"name":"$_sel_row","objective":"_anim"}},":",{"score":{"name":"$_sel_col","objective":"_anim"}}]'}
execute unless score $_key_selected _anim matches 1 as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run data modify storage anim:editor import_console.log set from block ~ ~ ~ Text1 
execute unless score $_key_selected _anim matches 1 as @e[tag=anim_free_block] at @s if score $_sign_placed _anim matches 1 run setblock ~ ~ ~ air
execute unless score $_key_selected _anim matches 1 run kill @e[tag=anim_free_block]
execute unless score $_key_selected _anim matches 1 if score $_sign_placed _anim matches 1 run data modify storage anim:editor console insert 0 from storage anim:editor import_console 
execute unless score $_key_selected _anim matches 1 run scoreboard players reset $_sign_placed _anim
execute unless score $_key_selected _anim matches 1 run tag @s remove anim_console_add

function anim_edit:gui/main/load