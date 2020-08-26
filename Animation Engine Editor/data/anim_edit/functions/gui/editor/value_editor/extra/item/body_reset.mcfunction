function anim_edit:search_part_editor
data remove storage anim:editor current_keyframe.extra.body
execute if data storage anim:editor sel_anim_data.body as @e[tag=anim_part_select] run data modify entity @s ArmorItems[2] set from storage anim:editor sel_anim_data.body
execute unless data storage anim:editor sel_anim_data.body as @e[tag=anim_part_select] run data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
function anim_edit:gui/editor/load
function anim_edit:deselect_anim