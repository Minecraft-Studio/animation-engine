function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
execute if score @s _anim_tab matches 1 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.head.y.value 1000
execute if score @s _anim_tab matches 2 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.body.y.value 1000
execute if score @s _anim_tab matches 3 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.r_arm.y.value 1000
execute if score @s _anim_tab matches 4 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.l_arm.y.value 1000
execute if score @s _anim_tab matches 5 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.r_leg.y.value 1000
execute if score @s _anim_tab matches 6 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.l_leg.y.value 1000
execute if score @s _anim_tab matches 7 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.rotation.y.value 1000
execute if score @s _anim_tab matches 8 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.pos.y.value 1000
execute if score $_sum_add _anim matches -2147483648..2147483647 run scoreboard players operation $_sum _anim += $_sum_add _anim
execute if score $_sum_set _anim matches -2147483648..2147483647 run scoreboard players operation $_sum _anim = $_sum_set _anim
execute if score @s _anim_tab matches 1 store result storage anim:editor current_keyframe.value.head.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 2 store result storage anim:editor current_keyframe.value.body.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 3 store result storage anim:editor current_keyframe.value.r_arm.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 4 store result storage anim:editor current_keyframe.value.l_arm.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 5 store result storage anim:editor current_keyframe.value.r_leg.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 6 store result storage anim:editor current_keyframe.value.l_leg.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 7 store result storage anim:editor current_keyframe.value.rotation.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 8 store result storage anim:editor current_keyframe.value.pos.y.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 1 if data storage anim:editor current_keyframe.value.head.y.value unless data storage anim:editor current_keyframe.value.head.y.graph run data modify storage anim:editor current_keyframe.value.head.y.graph set value "Linear"
execute if score @s _anim_tab matches 2 if data storage anim:editor current_keyframe.value.body.y.value unless data storage anim:editor current_keyframe.value.body.y.graph run data modify storage anim:editor current_keyframe.value.body.y.graph set value "Linear"
execute if score @s _anim_tab matches 3 if data storage anim:editor current_keyframe.value.r_arm.y.value unless data storage anim:editor current_keyframe.value.r_arm.y.graph run data modify storage anim:editor current_keyframe.value.r_arm.y.graph set value "Linear"
execute if score @s _anim_tab matches 4 if data storage anim:editor current_keyframe.value.l_arm.y.value unless data storage anim:editor current_keyframe.value.l_arm.y.graph run data modify storage anim:editor current_keyframe.value.l_arm.y.graph set value "Linear"
execute if score @s _anim_tab matches 5 if data storage anim:editor current_keyframe.value.r_leg.y.value unless data storage anim:editor current_keyframe.value.r_leg.y.graph run data modify storage anim:editor current_keyframe.value.r_leg.y.graph set value "Linear"
execute if score @s _anim_tab matches 6 if data storage anim:editor current_keyframe.value.l_leg.y.value unless data storage anim:editor current_keyframe.value.l_leg.y.graph run data modify storage anim:editor current_keyframe.value.l_leg.y.graph set value "Linear"
execute if score @s _anim_tab matches 7 if data storage anim:editor current_keyframe.value.rotation.y.value unless data storage anim:editor current_keyframe.value.rotation.y.graph run data modify storage anim:editor current_keyframe.value.rotation.y.graph set value "Linear"
execute if score @s _anim_tab matches 8 if data storage anim:editor current_keyframe.value.pos.y.value unless data storage anim:editor current_keyframe.value.pos.y.graph run data modify storage anim:editor current_keyframe.value.pos.y.graph set value "Linear"
scoreboard players reset $_sum _anim
scoreboard players reset $_sum_add _anim
scoreboard players reset $_sum_set _anim
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load