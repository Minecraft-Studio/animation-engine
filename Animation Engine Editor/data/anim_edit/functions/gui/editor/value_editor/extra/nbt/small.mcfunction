function anim_edit:search_part_editor
execute unless data storage anim:editor current_keyframe.extra.small store result storage anim:editor current_keyframe.extra.small_prev int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s Small
execute unless data storage anim:editor current_keyframe.extra.small store result storage anim:editor current_keyframe.extra.small int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s Small
execute if data storage anim:editor {current_keyframe:{extra:{small:0}}} run data modify storage anim:editor current_keyframe.extra.small set value 2
execute if data storage anim:editor {current_keyframe:{extra:{small:1}}} run data modify storage anim:editor current_keyframe.extra.small set value 0
execute if data storage anim:editor {current_keyframe:{extra:{small:2}}} run data modify storage anim:editor current_keyframe.extra.small set value 1
function anim_edit:gui/editor/load
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s Small byte 1 run data get storage anim:editor current_keyframe.extra.small