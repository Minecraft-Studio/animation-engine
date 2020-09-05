function ainm_edit:search_part
execute unless data storage anim:editor current_keyframe.extra.arms store result storage anim:editor current_keyframe.extra.arms_prev int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s ShowArms
execute unless data storage anim:editor current_keyframe.extra.arms store result storage anim:editor current_keyframe.extra.arms int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s ShowArms
execute if data storage anim:editor {current_keyframe:{extra:{arms:0}}} run data modify storage anim:editor current_keyframe.extra.arms set value 2
execute if data storage anim:editor {current_keyframe:{extra:{arms:1}}} run data modify storage anim:editor current_keyframe.extra.arms set value 0
execute if data storage anim:editor {current_keyframe:{extra:{arms:2}}} run data modify storage anim:editor current_keyframe.extra.arms set value 1
function anim_edit:gui/editor/load
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s ShowArms byte 1 run data get storage anim:editor current_keyframe.extra.arms
