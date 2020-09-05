function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:search_part
data modify storage anim:editor current_keyframe.extra.legg set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id run data modify storage anim:editor current_keyframe.extra.legg set value 1
execute as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[1] set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id if data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[1] set from storage anim:editor sel_anim_data.legg
execute unless data entity @s SelectedItem.id unless data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part_select] run data remove entity @s ArmorItems[1].id
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load