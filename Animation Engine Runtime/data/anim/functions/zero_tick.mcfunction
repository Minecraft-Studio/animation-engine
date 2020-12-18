#>anim:zero_tick
#>Loads data
# Loads previous keyframes data
data modify storage anim:runtime prev_keyframe set from entity @s ArmorItems[2].tag.prev_anim
# Loads next keyframe data
data modify storage anim:runtime next_keyframe set from entity @s ArmorItems[2].tag.anim[0]

#>Compiles data
execute if data storage anim:runtime next_keyframe.head.x run function anim:compiler/head/x

#>Old functions; unused
# #data modify storage anim:runtime entity_data_calc set value {Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},Rotation:[0.0f,0.0f],Pos:[0.0d,0.0d,0.0d]}
# data modify storage anim:runtime keyframe_data set from entity @s ArmorItems[2].tag.anim[0]
# data remove entity @s ArmorItems[2].tag.anim[0]

# #Head
# execute if data storage anim:runtime keyframe_data.rotate.head.x.value run data modify storage anim:runtime entity_data_calc.Pose.Head[0] set from storage anim:runtime keyframe_data.rotate.head.x.value
# execute if data storage anim:runtime keyframe_data.rotate.head.y.value run data modify storage anim:runtime entity_data_calc.Pose.Head[1] set from storage anim:runtime keyframe_data.rotate.head.y.value
# execute if data storage anim:runtime keyframe_data.rotate.head.z.value run data modify storage anim:runtime entity_data_calc.Pose.Head[2] set from storage anim:runtime keyframe_data.rotate.head.z.value
# scoreboard players reset @s _anim_hx
# scoreboard players reset @s _anim_hy
# scoreboard players reset @s _anim_hz
# scoreboard players reset @s _anim_hx_ease
# scoreboard players reset @s _anim_hy_ease
# scoreboard players reset @s _anim_hz_ease
# execute store result score @s _anim_hx run data get storage anim:runtime keyframe_data.rotate.head.x.add 1000
# execute store result score @s _anim_hy run data get storage anim:runtime keyframe_data.rotate.head.y.add 1000
# execute store result score @s _anim_hz run data get storage anim:runtime keyframe_data.rotate.head.z.add 1000
# execute store result score @s _anim_hx_ease run data get storage anim:runtime keyframe_data.rotate.head.x.ease_add 1000
# execute store result score @s _anim_hy_ease run data get storage anim:runtime keyframe_data.rotate.head.y.ease_add 1000
# execute store result score @s _anim_hz_ease run data get storage anim:runtime keyframe_data.rotate.head.z.ease_add 1000

# #Body
# execute if data storage anim:runtime keyframe_data.rotate.body.x.value run data modify storage anim:runtime entity_data_calc.Pose.Body[0] set from storage anim:runtime keyframe_data.rotate.body.x.value
# execute if data storage anim:runtime keyframe_data.rotate.body.y.value run data modify storage anim:runtime entity_data_calc.Pose.Body[1] set from storage anim:runtime keyframe_data.rotate.body.y.value
# execute if data storage anim:runtime keyframe_data.rotate.body.z.value run data modify storage anim:runtime entity_data_calc.Pose.Body[2] set from storage anim:runtime keyframe_data.rotate.body.z.value
# scoreboard players reset @s _anim_bx
# scoreboard players reset @s _anim_by
# scoreboard players reset @s _anim_bz
# scoreboard players reset @s _anim_bx_ease
# scoreboard players reset @s _anim_by_ease
# scoreboard players reset @s _anim_bz_ease
# execute store result score @s _anim_bx run data get storage anim:runtime keyframe_data.rotate.body.x.add 1000
# execute store result score @s _anim_by run data get storage anim:runtime keyframe_data.rotate.body.y.add 1000
# execute store result score @s _anim_bz run data get storage anim:runtime keyframe_data.rotate.body.z.add 1000
# execute store result score @s _anim_bx_ease run data get storage anim:runtime keyframe_data.rotate.body.x.ease_add 1000
# execute store result score @s _anim_by_ease run data get storage anim:runtime keyframe_data.rotate.body.y.ease_add 1000
# execute store result score @s _anim_bz_ease run data get storage anim:runtime keyframe_data.rotate.body.z.ease_add 1000

# #Left Arm
# execute if data storage anim:runtime keyframe_data.rotate.l_arm.x.value run data modify storage anim:runtime entity_data_calc.Pose.LeftArm[0] set from storage anim:runtime keyframe_data.rotate.l_arm.x.value
# execute if data storage anim:runtime keyframe_data.rotate.l_arm.y.value run data modify storage anim:runtime entity_data_calc.Pose.LeftArm[1] set from storage anim:runtime keyframe_data.rotate.l_arm.y.value
# execute if data storage anim:runtime keyframe_data.rotate.l_arm.z.value run data modify storage anim:runtime entity_data_calc.Pose.LeftArm[2] set from storage anim:runtime keyframe_data.rotate.l_arm.z.value
# scoreboard players reset @s _anim_lax
# scoreboard players reset @s _anim_lay
# scoreboard players reset @s _anim_laz
# scoreboard players reset @s _anim_lax_ease
# scoreboard players reset @s _anim_lay_ease
# scoreboard players reset @s _anim_laz_ease
# execute store result score @s _anim_lax run data get storage anim:runtime keyframe_data.rotate.l_arm.x.add 1000
# execute store result score @s _anim_lay run data get storage anim:runtime keyframe_data.rotate.l_arm.y.add 1000
# execute store result score @s _anim_laz run data get storage anim:runtime keyframe_data.rotate.l_arm.z.add 1000
# execute store result score @s _anim_lax_ease run data get storage anim:runtime keyframe_data.rotate.l_arm.x.ease_add 1000
# execute store result score @s _anim_lay_ease run data get storage anim:runtime keyframe_data.rotate.l_arm.y.ease_add 1000
# execute store result score @s _anim_laz_ease run data get storage anim:runtime keyframe_data.rotate.l_arm.z.ease_add 1000

# #Right Arm
# execute if data storage anim:runtime keyframe_data.rotate.r_arm.x.value run data modify storage anim:runtime entity_data_calc.Pose.RightArm[0] set from storage anim:runtime keyframe_data.rotate.r_arm.x.value
# execute if data storage anim:runtime keyframe_data.rotate.r_arm.y.value run data modify storage anim:runtime entity_data_calc.Pose.RightArm[1] set from storage anim:runtime keyframe_data.rotate.r_arm.y.value
# execute if data storage anim:runtime keyframe_data.rotate.r_arm.z.value run data modify storage anim:runtime entity_data_calc.Pose.RightArm[2] set from storage anim:runtime keyframe_data.rotate.r_arm.z.value
# scoreboard players reset @s _anim_rax
# scoreboard players reset @s _anim_ray
# scoreboard players reset @s _anim_raz
# scoreboard players reset @s _anim_rax_ease
# scoreboard players reset @s _anim_ray_ease
# scoreboard players reset @s _anim_raz_ease
# execute store result score @s _anim_rax run data get storage anim:runtime keyframe_data.rotate.r_arm.x.add 1000
# execute store result score @s _anim_ray run data get storage anim:runtime keyframe_data.rotate.r_arm.y.add 1000
# execute store result score @s _anim_raz run data get storage anim:runtime keyframe_data.rotate.r_arm.z.add 1000
# execute store result score @s _anim_rax_ease run data get storage anim:runtime keyframe_data.rotate.r_arm.x.ease_add 1000
# execute store result score @s _anim_ray_ease run data get storage anim:runtime keyframe_data.rotate.r_arm.y.ease_add 1000
# execute store result score @s _anim_raz_ease run data get storage anim:runtime keyframe_data.rotate.r_arm.z.ease_add 1000

# #Left Leg
# execute if data storage anim:runtime keyframe_data.rotate.l_leg.x.value run data modify storage anim:runtime entity_data_calc.Pose.LeftLeg[0] set from storage anim:runtime keyframe_data.rotate.l_leg.x.value
# execute if data storage anim:runtime keyframe_data.rotate.l_leg.y.value run data modify storage anim:runtime entity_data_calc.Pose.LeftLeg[1] set from storage anim:runtime keyframe_data.rotate.l_leg.y.value
# execute if data storage anim:runtime keyframe_data.rotate.l_leg.z.value run data modify storage anim:runtime entity_data_calc.Pose.LeftLeg[2] set from storage anim:runtime keyframe_data.rotate.l_leg.z.value
# scoreboard players reset @s _anim_llx
# scoreboard players reset @s _anim_lly
# scoreboard players reset @s _anim_llz
# scoreboard players reset @s _anim_llx_ease
# scoreboard players reset @s _anim_lly_ease
# scoreboard players reset @s _anim_llz_ease
# execute store result score @s _anim_llx run data get storage anim:runtime keyframe_data.rotate.l_leg.x.add 1000
# execute store result score @s _anim_lly run data get storage anim:runtime keyframe_data.rotate.l_leg.y.add 1000
# execute store result score @s _anim_llz run data get storage anim:runtime keyframe_data.rotate.l_leg.z.add 1000
# execute store result score @s _anim_llx_ease run data get storage anim:runtime keyframe_data.rotate.l_leg.x.ease_add 1000
# execute store result score @s _anim_lly_ease run data get storage anim:runtime keyframe_data.rotate.l_leg.y.ease_add 1000
# execute store result score @s _anim_llz_ease run data get storage anim:runtime keyframe_data.rotate.l_leg.z.ease_add 1000

# #Right Arm
# execute if data storage anim:runtime keyframe_data.rotate.r_leg.x.value run data modify storage anim:runtime entity_data_calc.Pose.RightLeg[0] set from storage anim:runtime keyframe_data.rotate.r_leg.x.value
# execute if data storage anim:runtime keyframe_data.rotate.r_leg.y.value run data modify storage anim:runtime entity_data_calc.Pose.RightLeg[1] set from storage anim:runtime keyframe_data.rotate.r_leg.y.value
# execute if data storage anim:runtime keyframe_data.rotate.r_leg.z.value run data modify storage anim:runtime entity_data_calc.Pose.RightLeg[2] set from storage anim:runtime keyframe_data.rotate.r_leg.z.value
# scoreboard players reset @s _anim_rlx
# scoreboard players reset @s _anim_rly
# scoreboard players reset @s _anim_rlz
# scoreboard players reset @s _anim_rlx_ease
# scoreboard players reset @s _anim_rly_ease
# scoreboard players reset @s _anim_rlz_ease
# execute store result score @s _anim_rlx run data get storage anim:runtime keyframe_data.rotate.r_leg.x.add 1000
# execute store result score @s _anim_rly run data get storage anim:runtime keyframe_data.rotate.r_leg.y.add 1000
# execute store result score @s _anim_rlz run data get storage anim:runtime keyframe_data.rotate.r_leg.z.add 1000
# execute store result score @s _anim_rlx_ease run data get storage anim:runtime keyframe_data.rotate.r_leg.x.ease_add 1000
# execute store result score @s _anim_rly_ease run data get storage anim:runtime keyframe_data.rotate.r_leg.y.ease_add 1000
# execute store result score @s _anim_rlz_ease run data get storage anim:runtime keyframe_data.rotate.r_leg.z.ease_add 1000

# #Pos
# # tellraw @p {"nbt":"ArmorItems[2].tag.anim[0]","entity":"@s","color":"aqua"}
# execute if data storage anim:runtime keyframe_data.position run scoreboard players operation $_ida_lookup _anim = @s _anim_ida
# execute if data storage anim:runtime keyframe_data.position.x.value store result score @s _anim_px_value run data get storage anim:runtime keyframe_data.position.x.value 1000
# execute if data storage anim:runtime keyframe_data.position.x.value store result score @s _anim_calc as @e[tag=anim_model] if score @s _anim_ida = $_ida_lookup _anim run data get entity @s Pos[0] 1000
# execute if data storage anim:runtime keyframe_data.position.x.value store result storage anim:runtime entity_data_calc.Pos[0] double 0.001 run scoreboard players operation @s _anim_calc += @s _anim_px_value
# execute if data storage anim:runtime keyframe_data.position.y.value store result score @s _anim_py_value run data get storage anim:runtime keyframe_data.position.y.value 1000
# execute if data storage anim:runtime keyframe_data.position.y.value store result score @s _anim_calc as @e[tag=anim_model] if score @s _anim_ida = $_ida_lookup _anim run data get entity @s Pos[1] 1000
# execute if data storage anim:runtime keyframe_data.position.y.value store result storage anim:runtime entity_data_calc.Pos[1] double 0.001 run scoreboard players operation @s _anim_calc += @s _anim_py_value
# execute if data storage anim:runtime keyframe_data.position.z.value store result score @s _anim_pz_value run data get storage anim:runtime keyframe_data.position.z.value 1000
# execute if data storage anim:runtime keyframe_data.position.z.value store result score @s _anim_calc as @e[tag=anim_model] if score @s _anim_ida = $_ida_lookup _anim run data get entity @s Pos[2] 1000
# execute if data storage anim:runtime keyframe_data.position.z.value store result storage anim:runtime entity_data_calc.Pos[2] double 0.001 run scoreboard players operation @s _anim_calc += @s _anim_pz_value
# scoreboard players reset $_ida_lookup _anim
# # tellraw @p {"nbt":"Pos","entity":"@s","color":"aqua"}
# scoreboard players reset @s _anim_px
# scoreboard players reset @s _anim_py
# scoreboard players reset @s _anim_pz
# scoreboard players reset @s _anim_px_ease
# scoreboard players reset @s _anim_py_ease
# scoreboard players reset @s _anim_pz_ease
# execute store result score @s _anim_px run data get storage anim:runtime keyframe_data.position.x.add 1000
# execute store result score @s _anim_py run data get storage anim:runtime keyframe_data.position.y.add 1000
# execute store result score @s _anim_pz run data get storage anim:runtime keyframe_data.position.z.add 1000
# execute store result score @s _anim_px_ease run data get storage anim:runtime keyframe_data.position.x.ease_add 1000
# execute store result score @s _anim_py_ease run data get storage anim:runtime keyframe_data.position.y.ease_add 1000
# execute store result score @s _anim_pz_ease run data get storage anim:runtime keyframe_data.position.z.ease_add 1000

# #Extra
# execute store result score @s _anim_calc run data get storage anim:runtime keyframe_data.extra.body
# execute if score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.body run data modify storage anim:runtime entity_data_calc.ArmorItems[2].tag.anim[0].extra.body set value {id:"minecraft:stone",Count:1b}
# execute if data storage anim:runtime keyframe_data.extra.body run data modify storage anim:runtime entity_data_calc.ArmorItems[2].tag.anim[0].extra.body.tag.anim set from entity @s ArmorItems[2].tag.anim
# execute if data storage anim:runtime keyframe_data.extra.body run data modify storage anim:runtime entity_data_calc.ArmorItems[2] set from storage anim:runtime keyframe_data.extra.body

# execute store result score @s _anim_calc run data get storage anim:runtime keyframe_data.extra.head
# execute if score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.head run data remove entity @s ArmorItems[3]
# execute unless score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.head run data modify storage anim:runtime entity_data_calc.ArmorItems[3] set from storage anim:runtime keyframe_data.extra.head

# execute store result score @s _anim_calc run data get storage anim:runtime keyframe_data.extra.r_arm
# execute if score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.r_arm run data remove entity @s HandItems[0].id
# execute unless score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.r_arm run data modify storage anim:runtime entity_data_calc.HandItems[0] set from storage anim:runtime keyframe_data.extra.r_arm

# execute store result score @s _anim_calc run data get storage anim:runtime keyframe_data.extra.l_arm
# execute if score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.l_arm run data remove entity @s HandItems[1].id
# execute unless score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.l_arm run data modify storage anim:runtime entity_data_calc.HandItems[1] set from storage anim:runtime keyframe_data.extra.l_arm

# execute store result score @s _anim_calc run data get storage anim:runtime keyframe_data.extra.legg
# execute if score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.legg run data remove entity @s ArmorItems[1].id
# execute unless score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.legg run data modify storage anim:runtime entity_data_calc.ArmorItems[1] set from storage anim:runtime keyframe_data.extra.legg

# execute store result score @s _anim_calc run data get storage anim:runtime keyframe_data.extra.boots
# execute if score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.boots run data remove entity @s ArmorItems[0].id
# execute unless score @s _anim_calc matches 1 if data storage anim:runtime keyframe_data.extra.boots run data modify storage anim:runtime entity_data_calc.ArmorItems[0] set from storage anim:runtime keyframe_data.extra.boots


# execute if data storage anim:runtime keyframe_data.extra.invisible run data modify storage anim:runtime entity_data_calc.Invisible set from storage anim:runtime keyframe_data.extra.invisible
# execute if data storage anim:runtime keyframe_data.extra.marker run data modify storage anim:runtime entity_data_calc.Marker set from storage anim:runtime keyframe_data.extra.marker
# execute if data storage anim:runtime keyframe_data.extra.arms run data modify storage anim:runtime entity_data_calc.ShowArms set from storage anim:runtime keyframe_data.extra.arms
# execute if data storage anim:runtime keyframe_data.extra.small run data modify storage anim:runtime entity_data_calc.Small set from storage anim:runtime keyframe_data.extra.small

# data remove storage anim:runtime keyframe_data
# execute store result score @s _anim_tick_left run data get storage anim:runtime keyframe_data.tick_left

# #FIX: set anim_part's body armor as `stone` and `count 1` to be able to paste data into it even through it's empty