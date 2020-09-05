function ainm_edit:search_part
data modify storage anim:editor current_keyframe.extra.body set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id run data modify storage anim:editor current_keyframe.extra.body set value 1
execute as @e[tag=anim_part_select] run data modify entity @s ArmorItems[2] set from entity @s SelectedItem
execute unless data entity @s SelectedItem.id if data storage anim:editor sel_anim_data.body as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[2] set from storage anim:editor sel_anim_data.body
execute unless data entity @s SelectedItem.id unless data storage anim:editor sel_anim_data.body as @e[type=armor_stand,tag=anim_part_select] run data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
function anim_edit:gui/editor/load