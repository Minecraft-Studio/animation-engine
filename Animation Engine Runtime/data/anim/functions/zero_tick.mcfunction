
#Head
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.head.x.value run data modify entity @s Pose.Head[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.head.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.head.y.value run data modify entity @s Pose.Head[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.head.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.head.z.value run data modify entity @s Pose.Head[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.head.z.value
scoreboard players reset @s _anim_hx
scoreboard players reset @s _anim_hy
scoreboard players reset @s _anim_hz
execute store result score @s _anim_hx run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.x.add 1000
execute store result score @s _anim_hy run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.y.add 1000
execute store result score @s _anim_hz run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.z.add 1000

#Body
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.body.x.value run data modify entity @s Pose.Body[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.body.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.body.y.value run data modify entity @s Pose.Body[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.body.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.body.z.value run data modify entity @s Pose.Body[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.body.z.value
scoreboard players reset @s _anim_bx
scoreboard players reset @s _anim_by
scoreboard players reset @s _anim_bz
execute store result score @s _anim_bx run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.x.add 1000
execute store result score @s _anim_by run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.y.add 1000
execute store result score @s _anim_bz run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.z.add 1000

#Left Arm
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.value run data modify entity @s Pose.LeftArm[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.value run data modify entity @s Pose.LeftArm[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.value run data modify entity @s Pose.LeftArm[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.value
scoreboard players reset @s _anim_lax
scoreboard players reset @s _anim_lay
scoreboard players reset @s _anim_laz
execute store result score @s _anim_lax run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.add 1000
execute store result score @s _anim_lay run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.add 1000
execute store result score @s _anim_laz run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.add 1000

#Right Arm
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.value run data modify entity @s Pose.RightArm[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.value run data modify entity @s Pose.RightArm[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.value run data modify entity @s Pose.RightArm[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.value
scoreboard players reset @s _anim_rax
scoreboard players reset @s _anim_ray
scoreboard players reset @s _anim_raz
execute store result score @s _anim_rax run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.add 1000
execute store result score @s _anim_ray run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.add 1000
execute store result score @s _anim_raz run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.add 1000

#Left Leg
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.value run data modify entity @s Pose.LeftLeg[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.value run data modify entity @s Pose.LeftLeg[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.value run data modify entity @s Pose.LeftLeg[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.value
scoreboard players reset @s _anim_llx
scoreboard players reset @s _anim_lly
scoreboard players reset @s _anim_llz
execute store result score @s _anim_llx run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.add 1000
execute store result score @s _anim_lly run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.add 1000
execute store result score @s _anim_llz run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.add 1000

#Right Arm
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.value run data modify entity @s Pose.RightLeg[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.value run data modify entity @s Pose.RightLeg[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.value run data modify entity @s Pose.RightLeg[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.value
scoreboard players reset @s _anim_rlx
scoreboard players reset @s _anim_rly
scoreboard players reset @s _anim_rlz
execute store result score @s _anim_rlx run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.add 1000
execute store result score @s _anim_rly run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.add 1000
execute store result score @s _anim_rlz run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.add 1000

data remove entity @s ArmorItems[2].tag.anim[0]
execute store result score @s _anim_tick run data get entity @s ArmorItems[2].tag.anim[0].tick_left 1