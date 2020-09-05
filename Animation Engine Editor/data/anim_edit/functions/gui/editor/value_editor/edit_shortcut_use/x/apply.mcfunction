function anim_edit:get_anim_keyframes
scoreboard players operation $_get_tick _anim = @s _anim_editor_col
scoreboard players operation $_get_part _anim = @s _anim_idb_select
function anim_edit:get_anim_keyframe
execute if score @s _anim_tab matches 1 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.head.x.value 1000
execute if score @s _anim_tab matches 2 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.body.x.value 1000
execute if score @s _anim_tab matches 3 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.r_arm.x.value 1000
execute if score @s _anim_tab matches 4 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.l_arm.x.value 1000
execute if score @s _anim_tab matches 5 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.r_leg.x.value 1000
execute if score @s _anim_tab matches 6 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.l_leg.x.value 1000
execute if score @s _anim_tab matches 7 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.rotation.x.value 1000
execute if score @s _anim_tab matches 8 store result score $_sum _anim run data get storage anim:editor current_keyframe.value.pos.x.value 1000
execute if score $_sum_add _anim matches -2147483648..2147483647 run scoreboard players operation $_sum _anim += $_sum_add _anim
execute if score $_sum_set _anim matches -2147483648..2147483647 run scoreboard players operation $_sum _anim = $_sum_set _anim
execute if score @s _anim_tab matches 1 store result storage anim:editor current_keyframe.value.head.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 2 store result storage anim:editor current_keyframe.value.body.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 3 store result storage anim:editor current_keyframe.value.r_arm.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 4 store result storage anim:editor current_keyframe.value.l_arm.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 5 store result storage anim:editor current_keyframe.value.r_leg.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 6 store result storage anim:editor current_keyframe.value.l_leg.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 7 store result storage anim:editor current_keyframe.value.rotation.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 8 store result storage anim:editor current_keyframe.value.pos.x.value float 0.001 run scoreboard players get $_sum _anim
execute if score @s _anim_tab matches 1 if data storage anim:editor current_keyframe.value.head.x.value unless data storage anim:editor current_keyframe.value.head.x.graph run data modify storage anim:editor current_keyframe.value.head.x.graph set value "Linear"
execute if score @s _anim_tab matches 2 if data storage anim:editor current_keyframe.value.body.x.value unless data storage anim:editor current_keyframe.value.body.x.graph run data modify storage anim:editor current_keyframe.value.body.x.graph set value "Linear"
execute if score @s _anim_tab matches 3 if data storage anim:editor current_keyframe.value.r_arm.x.value unless data storage anim:editor current_keyframe.value.r_arm.x.graph run data modify storage anim:editor current_keyframe.value.r_arm.x.graph set value "Linear"
execute if score @s _anim_tab matches 4 if data storage anim:editor current_keyframe.value.l_arm.x.value unless data storage anim:editor current_keyframe.value.l_arm.x.graph run data modify storage anim:editor current_keyframe.value.l_arm.x.graph set value "Linear"
execute if score @s _anim_tab matches 5 if data storage anim:editor current_keyframe.value.r_leg.x.value unless data storage anim:editor current_keyframe.value.r_leg.x.graph run data modify storage anim:editor current_keyframe.value.r_leg.x.graph set value "Linear"
execute if score @s _anim_tab matches 6 if data storage anim:editor current_keyframe.value.l_leg.x.value unless data storage anim:editor current_keyframe.value.l_leg.x.graph run data modify storage anim:editor current_keyframe.value.l_leg.x.graph set value "Linear"
execute if score @s _anim_tab matches 7 if data storage anim:editor current_keyframe.value.rotation.x.value unless data storage anim:editor current_keyframe.value.rotation.x.graph run data modify storage anim:editor current_keyframe.value.rotation.x.graph set value "Linear"
execute if score @s _anim_tab matches 8 if data storage anim:editor current_keyframe.value.pos.x.value unless data storage anim:editor current_keyframe.value.pos.x.graph run data modify storage anim:editor current_keyframe.value.pos.x.graph set value "Linear"
scoreboard players reset $_sum _anim
scoreboard players reset $_sum_add _anim
scoreboard players reset $_sum_set _anim
function anim_edit:set_anim_keyframe
function anim_edit:gui/main/load