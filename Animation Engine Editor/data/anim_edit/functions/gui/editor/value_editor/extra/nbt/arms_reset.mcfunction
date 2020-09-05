function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
function anim_edit:search_part
data remove storage anim:editor current_keyframe.extra.arms
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s ShowArms byte 1 run data get storage anim:editor current_keyframe.extra.arms_prev
data remove storage anim:editor current_keyframe.extra.arms_prev
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load