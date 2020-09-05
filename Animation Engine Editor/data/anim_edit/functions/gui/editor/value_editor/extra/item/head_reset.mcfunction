function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:search_part
data remove storage anim:editor current_keyframe.extra.head
execute if data storage anim:editor sel_anim_data.head as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[3] set from storage anim:editor sel_anim_data.head
execute unless data storage anim:editor sel_anim_data.head as @e[type=armor_stand,tag=anim_part_select] run data remove entity @s ArmorItems[3].id
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load