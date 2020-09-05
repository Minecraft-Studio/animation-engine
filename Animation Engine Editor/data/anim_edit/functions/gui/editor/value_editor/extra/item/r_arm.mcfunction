function ainm_edit:search_part
data modify storage anim:editor current_keyframe.extra.r_arm set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id run data modify storage anim:editor current_keyframe.extra.r_arm set value 1
execute as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s HandItems[0] set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id as @e[type=armor_stand,tag=anim_part_select] if data storage anim:editor sel_anim_data.r_arm run data modify entity @s HandItems[0] set from storage anim:editor sel_anim_data.r_arm
execute unless data entity @s SelectedItem.id as @e[type=armor_stand,tag=anim_part_select] unless data storage anim:editor sel_anim_data.r_arm run data remove entity @s HandItems[0].id
function anim_edit:gui/editor/load