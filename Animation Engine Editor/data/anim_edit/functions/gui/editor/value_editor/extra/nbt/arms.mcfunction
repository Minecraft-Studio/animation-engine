function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:search_part
execute unless data storage anim:editor current_keyframe.extra.arms store result storage anim:editor current_keyframe.extra.arms_prev int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s ShowArms
execute unless data storage anim:editor current_keyframe.extra.arms store result storage anim:editor current_keyframe.extra.arms int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s ShowArms
execute if data storage anim:editor {current_keyframe:{extra:{arms:0}}} run data modify storage anim:editor current_keyframe.extra.arms set value 2
execute if data storage anim:editor {current_keyframe:{extra:{arms:1}}} run data modify storage anim:editor current_keyframe.extra.arms set value 0
execute if data storage anim:editor {current_keyframe:{extra:{arms:2}}} run data modify storage anim:editor current_keyframe.extra.arms set value 1
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s ShowArms byte 1 run data get storage anim:editor current_keyframe.extra.arms
