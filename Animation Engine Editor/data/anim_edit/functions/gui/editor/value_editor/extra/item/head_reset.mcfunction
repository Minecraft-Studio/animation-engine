function anim_edit:search_part_editor
data remove storage anim:editor current_keyframe.extra.head
execute if data storage anim:editor sel_anim_data.head as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[3] set from storage anim:editor sel_anim_data.head
execute unless data storage anim:editor sel_anim_data.head as @e[type=armor_stand,tag=anim_part_select] run data remove entity @s ArmorItems[3].id
function anim_edit:gui/editor/load