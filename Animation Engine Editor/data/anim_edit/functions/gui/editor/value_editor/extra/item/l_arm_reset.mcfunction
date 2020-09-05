function ainm_edit:search_part
data remove storage anim:editor current_keyframe.extra.l_arm
#FIX: change sel_anim_data to ArmorItems[2].tag.anim_data_on_reset
execute as @e[type=armor_stand,tag=anim_part_select] if data storage anim:editor sel_anim_data.l_arm run data modify entity @s HandItems[1] set from storage anim:editor sel_anim_data.l_arm
execute as @e[type=armor_stand,tag=anim_part_select] unless data storage anim:editor sel_anim_data.l_arm run data remove entity @s HandItems[1].id
function anim_edit:gui/editor/load