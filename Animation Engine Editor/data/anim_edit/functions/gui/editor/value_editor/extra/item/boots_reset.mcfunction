function anim_edit:search_part_editor
data remove storage anim:editor current_keyframe.extra.boots
execute if data storage anim:editor sel_anim_data.boots as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[0] set from storage anim:editor sel_anim_data.boots
execute unless data storage anim:editor sel_anim_data.boots as @e[type=armor_stand,tag=anim_part_select] run data remove entity @s ArmorItems[0].id
function anim_edit:gui/editor/load