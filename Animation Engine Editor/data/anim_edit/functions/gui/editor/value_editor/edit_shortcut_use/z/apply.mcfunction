function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_editor_row
function anim_edit:get_anim_keyframe
execute if score @s _anim_tab matches 1 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.head.z.value 1000
execute if score @s _anim_tab matches 2 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.body.z.value 1000
execute if score @s _anim_tab matches 3 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.r_arm.z.value 1000
execute if score @s _anim_tab matches 4 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.l_arm.z.value 1000
execute if score @s _anim_tab matches 5 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.r_leg.z.value 1000
execute if score @s _anim_tab matches 6 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.l_leg.z.value 1000
execute if score @s _anim_tab matches 7 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.rotation.z.value 1000
execute if score @s _anim_tab matches 8 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.pos.z.value 1000
execute if score $_sum_add _anim matches -2147483648..2147483647 run scoreboard players operation $_sum _anim += $_sum_add _anim
execute if score $_sum_set _anim matches -2147483648..2147483647 run scoreboard players operation $_sum _anim = $_sum_set _anim
execute if score @s _anim_tab matches 1 store result storage anim:editor current_keyframe.value.head.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 2 store result storage anim:editor current_keyframe.value.body.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 3 store result storage anim:editor current_keyframe.value.r_arm.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 4 store result storage anim:editor current_keyframe.value.l_arm.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 5 store result storage anim:editor current_keyframe.value.r_leg.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 6 store result storage anim:editor current_keyframe.value.l_leg.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 7 store result storage anim:editor current_keyframe.value.rotation.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 8 store result storage anim:editor current_keyframe.value.pos.z.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 1 if data storage anim:editor current_keyframe.value.head.z.value unless data storage anim:editor current_keyframe.value.head.z.graph run data modify storage anim:editor current_keyframe.value.head.z.graph set value "Linear"
execute if score @s _anim_tab matches 2 if data storage anim:editor current_keyframe.value.body.z.value unless data storage anim:editor current_keyframe.value.body.z.graph run data modify storage anim:editor current_keyframe.value.body.z.graph set value "Linear"
execute if score @s _anim_tab matches 3 if data storage anim:editor current_keyframe.value.r_arm.z.value unless data storage anim:editor current_keyframe.value.r_arm.z.graph run data modify storage anim:editor current_keyframe.value.r_arm.z.graph set value "Linear"
execute if score @s _anim_tab matches 4 if data storage anim:editor current_keyframe.value.l_arm.z.value unless data storage anim:editor current_keyframe.value.l_arm.z.graph run data modify storage anim:editor current_keyframe.value.l_arm.z.graph set value "Linear"
execute if score @s _anim_tab matches 5 if data storage anim:editor current_keyframe.value.r_leg.z.value unless data storage anim:editor current_keyframe.value.r_leg.z.graph run data modify storage anim:editor current_keyframe.value.r_leg.z.graph set value "Linear"
execute if score @s _anim_tab matches 6 if data storage anim:editor current_keyframe.value.l_leg.z.value unless data storage anim:editor current_keyframe.value.l_leg.z.graph run data modify storage anim:editor current_keyframe.value.l_leg.z.graph set value "Linear"
execute if score @s _anim_tab matches 7 if data storage anim:editor current_keyframe.value.rotation.z.value unless data storage anim:editor current_keyframe.value.rotation.z.graph run data modify storage anim:editor current_keyframe.value.rotation.z.graph set value "Linear"
execute if score @s _anim_tab matches 8 if data storage anim:editor current_keyframe.value.pos.z.value unless data storage anim:editor current_keyframe.value.pos.z.graph run data modify storage anim:editor current_keyframe.value.pos.z.graph set value "Linear"
scoreboard players reset $_sum _anim
scoreboard players reset $_sum_add _anim
scoreboard players reset $_sum_set _anim
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load