function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
execute if score @s _anim_tab matches 1 run data remove storage anim:editor current_keyframe.value.head.z
execute if score @s _anim_tab matches 2 run data remove storage anim:editor current_keyframe.value.body.z
execute if score @s _anim_tab matches 3 run data remove storage anim:editor current_keyframe.value.r_arm.z
execute if score @s _anim_tab matches 4 run data remove storage anim:editor current_keyframe.value.l_arm.z
execute if score @s _anim_tab matches 5 run data remove storage anim:editor current_keyframe.value.r_leg.z
execute if score @s _anim_tab matches 6 run data remove storage anim:editor current_keyframe.value.l_leg.z
execute if score @s _anim_tab matches 7 run data remove storage anim:editor current_keyframe.value.rotation.z
execute if score @s _anim_tab matches 8 run data remove storage anim:editor current_keyframe.value.pos.z
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load