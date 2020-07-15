scoreboard players add @s _anim_tick 1
scoreboard players remove @s _anim_tick_left 1

execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0f,0f,0.0001f]
execute unless data entity @s Pose.Body run data modify entity @s Pose.Body set value [0f,0f,0.0001f]
execute unless data entity @s Pose.LeftLeg run data modify entity @s Pose.LeftLeg set value [0f,0f,0.0001f]
execute unless data entity @s Pose.RightLeg run data modify entity @s Pose.RightLeg set value [0f,0f,0.0001f]
execute unless data entity @s Pose.LeftArm run data modify entity @s Pose.LeftArm set value [0f,0f,0.0001f]
execute unless data entity @s Pose.RightArm run data modify entity @s Pose.RightArm set value [0f,0f,0.0001f]

# Head
execute unless score @s _anim_hx matches 0 if score @s _anim_hx matches -2147483648..2147483647 run function anim:add/head/x
execute unless score @s _anim_hy matches 0 if score @s _anim_hy matches -2147483648..2147483647 run function anim:add/head/y
execute unless score @s _anim_hz matches 0 if score @s _anim_hz matches -2147483648..2147483647 run function anim:add/head/z
# Body
execute unless score @s _anim_bx matches 0 if score @s _anim_bx matches -2147483648..2147483647 run function anim:add/body/x
execute unless score @s _anim_by matches 0 if score @s _anim_by matches -2147483648..2147483647 run function anim:add/body/y
execute unless score @s _anim_bz matches 0 if score @s _anim_bz matches -2147483648..2147483647 run function anim:add/body/z
# Left Arm
execute unless score @s _anim_lax matches 0 if score @s _anim_lax matches -2147483648..2147483647 run function anim:add/l_arm/x
execute unless score @s _anim_lay matches 0 if score @s _anim_lay matches -2147483648..2147483647 run function anim:add/l_arm/y
execute unless score @s _anim_laz matches 0 if score @s _anim_laz matches -2147483648..2147483647 run function anim:add/l_arm/z
# Right Arm
execute unless score @s _anim_rax matches 0 if score @s _anim_rax matches -2147483648..2147483647 run function anim:add/r_arm/x
execute unless score @s _anim_ray matches 0 if score @s _anim_ray matches -2147483648..2147483647 run function anim:add/r_arm/y
execute unless score @s _anim_raz matches 0 if score @s _anim_raz matches -2147483648..2147483647 run function anim:add/r_arm/z
# Left Leg
execute unless score @s _anim_llx matches 0 if score @s _anim_llx matches -2147483648..2147483647 run function anim:add/l_leg/x
execute unless score @s _anim_lly matches 0 if score @s _anim_lly matches -2147483648..2147483647 run function anim:add/l_leg/y
execute unless score @s _anim_llz matches 0 if score @s _anim_llz matches -2147483648..2147483647 run function anim:add/l_leg/z
# Right Leg
execute unless score @s _anim_rlx matches 0 if score @s _anim_rlx matches -2147483648..2147483647 run function anim:add/r_leg/x
execute unless score @s _anim_rly matches 0 if score @s _anim_rly matches -2147483648..2147483647 run function anim:add/r_leg/y
execute unless score @s _anim_rlz matches 0 if score @s _anim_rlz matches -2147483648..2147483647 run function anim:add/r_leg/z
# Postion
execute unless score @s _anim_px matches 0 if score @s _anim_px matches -2147483648..2147483647 run function anim:add/pos/x
execute unless score @s _anim_py matches 0 if score @s _anim_py matches -2147483648..2147483647 run function anim:add/pos/y
execute unless score @s _anim_pz matches 0 if score @s _anim_pz matches -2147483648..2147483647 run function anim:add/pos/z

# tellraw @p {"nbt":"Pose.Head","entity":"@s","color":"red"}
# tellraw @p {"score": {"name": "@s","objective": "_anim_tick_left"},"color":"green"}
# tellraw @p [{"score": {"name": "@s","objective": "_anim_px"},"color":"green"},{"text":" "},{"score": {"name": "@s","objective": "_anim_py"},"color":"green"},{"text":" "},{"score": {"name": "@s","objective": "_anim_pz"},"color":"green"},{"text":" "},{"nbt":"Pos[0]","entity":"@s","color":"red"},{"text":" "},{"nbt":"Pos[1]","entity":"@s","color":"red"},{"text":" "},{"nbt":"Pos[2]","entity":"@s","color":"red"},{"text":" "},{"nbt":"Pos[0]","entity":"@e[tag=anim_main,limit=1]","color":"blue"},{"text":" "},{"nbt":"Pos[1]","entity":"@e[tag=anim_main,limit=1]","color":"blue"},{"text":" "},{"nbt":"Pos[2]","entity":"@e[tag=anim_main,limit=1]","color":"blue"}]


#If 0 load next keyframe
execute if score @s _anim_tick_left matches ..0 unless data entity @s ArmorItems[2].tag.anim[0] run function anim:end_animation
execute if score @s _anim_tick_left matches ..0 if data entity @s ArmorItems[2].tag.anim[0] run function anim:zero_tick