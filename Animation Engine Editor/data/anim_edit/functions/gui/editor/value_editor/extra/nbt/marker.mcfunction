function anim_edit:search_part_editor
execute unless data storage anim:editor current_keyframe.extra.marker store result storage anim:editor current_keyframe.extra.marker_prev int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s Marker
execute unless data storage anim:editor current_keyframe.extra.marker store result storage anim:editor current_keyframe.extra.marker int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s Marker
execute if data storage anim:editor {current_keyframe:{extra:{marker:0}}} run data modify storage anim:editor current_keyframe.extra.marker set value 2
execute if data storage anim:editor {current_keyframe:{extra:{marker:1}}} run data modify storage anim:editor current_keyframe.extra.marker set value 0
execute if data storage anim:editor {current_keyframe:{extra:{marker:2}}} run data modify storage anim:editor current_keyframe.extra.marker set value 1
function anim_edit:gui/editor/load
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s Marker byte 1 run data get storage anim:editor current_keyframe.extra.marker