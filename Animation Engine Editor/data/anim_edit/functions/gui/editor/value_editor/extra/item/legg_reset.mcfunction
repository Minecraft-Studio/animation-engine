function ainm_edit:search_part
data remove storage anim:editor current_keyframe.extra.legg
execute if data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[1] set from storage anim:editor sel_anim_data.legg
execute unless data storage anim:editor sel_anim_data.legg as @e[type=armor_stand,tag=anim_part_select] run data remove entity @s ArmorItems[1].id
function anim_edit:gui/editor/load