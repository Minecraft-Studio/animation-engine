function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:search_part
data remove storage anim:editor current_keyframe.extra.body
execute if data storage anim:editor sel_anim_data.body as @e[tag=anim_part_select] run data modify entity @s ArmorItems[2] set from storage anim:editor sel_anim_data.body
execute unless data storage anim:editor sel_anim_data.body as @e[tag=anim_part_select] run data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load
function anim_edit:deselect_anim