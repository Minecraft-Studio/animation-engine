
#Head
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.head.x.value run data modify entity @s Pose.Head[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.head.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.head.y.value run data modify entity @s Pose.Head[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.head.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.head.z.value run data modify entity @s Pose.Head[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.head.z.value
scoreboard players reset @s _anim_hx
scoreboard players reset @s _anim_hy
scoreboard players reset @s _anim_hz
scoreboard players reset @s _anim_hx_ease
scoreboard players reset @s _anim_hy_ease
scoreboard players reset @s _anim_hz_ease
execute store result score @s _anim_hx run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.x.add 1000
execute store result score @s _anim_hy run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.y.add 1000
execute store result score @s _anim_hz run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_hx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_hx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_hy_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_hy_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_hz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_hz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.head.z.ease_add -1000

#Body
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.body.x.value run data modify entity @s Pose.Body[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.body.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.body.y.value run data modify entity @s Pose.Body[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.body.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.body.z.value run data modify entity @s Pose.Body[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.body.z.value
scoreboard players reset @s _anim_bx
scoreboard players reset @s _anim_by
scoreboard players reset @s _anim_bz
scoreboard players reset @s _anim_bx_ease
scoreboard players reset @s _anim_by_ease
scoreboard players reset @s _anim_bz_ease
execute store result score @s _anim_bx run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.x.add 1000
execute store result score @s _anim_by run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.y.add 1000
execute store result score @s _anim_bz run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_bx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_bx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_by_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_by_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_bz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_bz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.body.z.ease_add -1000

#Left Arm
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.value run data modify entity @s Pose.LeftArm[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.value run data modify entity @s Pose.LeftArm[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.value run data modify entity @s Pose.LeftArm[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.value
scoreboard players reset @s _anim_lax
scoreboard players reset @s _anim_lay
scoreboard players reset @s _anim_laz
scoreboard players reset @s _anim_lax_ease
scoreboard players reset @s _anim_lay_ease
scoreboard players reset @s _anim_laz_ease
execute store result score @s _anim_lax run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.add 1000
execute store result score @s _anim_lay run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.add 1000
execute store result score @s _anim_laz run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_lax_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_lax_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_lay_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_lay_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_laz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_laz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z.ease_add -1000

#Right Arm
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.value run data modify entity @s Pose.RightArm[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.value run data modify entity @s Pose.RightArm[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.value run data modify entity @s Pose.RightArm[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.value
scoreboard players reset @s _anim_rax
scoreboard players reset @s _anim_ray
scoreboard players reset @s _anim_raz
scoreboard players reset @s _anim_rax_ease
scoreboard players reset @s _anim_ray_ease
scoreboard players reset @s _anim_raz_ease
execute store result score @s _anim_rax run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.add 1000
execute store result score @s _anim_ray run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.add 1000
execute store result score @s _anim_raz run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_rax_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_rax_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_ray_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_ray_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_raz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_raz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z.ease_add -1000

#Left Leg
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.value run data modify entity @s Pose.LeftLeg[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.value run data modify entity @s Pose.LeftLeg[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.value run data modify entity @s Pose.LeftLeg[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.value
scoreboard players reset @s _anim_llx
scoreboard players reset @s _anim_lly
scoreboard players reset @s _anim_llz
scoreboard players reset @s _anim_llx_ease
scoreboard players reset @s _anim_lly_ease
scoreboard players reset @s _anim_llz_ease
execute store result score @s _anim_llx run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.add 1000
execute store result score @s _anim_lly run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.add 1000
execute store result score @s _anim_llz run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_llx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_llx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_lly_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_lly_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_llz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_llz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z.ease_add -1000

#Right Arm
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.value run data modify entity @s Pose.RightLeg[0] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.value run data modify entity @s Pose.RightLeg[1] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.value run data modify entity @s Pose.RightLeg[2] set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.value
scoreboard players reset @s _anim_rlx
scoreboard players reset @s _anim_rly
scoreboard players reset @s _anim_rlz
scoreboard players reset @s _anim_rlx_ease
scoreboard players reset @s _anim_rly_ease
scoreboard players reset @s _anim_rlz_ease
execute store result score @s _anim_rlx run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.add 1000
execute store result score @s _anim_rly run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.add 1000
execute store result score @s _anim_rlz run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_rlx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_rlx_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_rly_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_rly_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_rlz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_rlz_ease run data get entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z.ease_add -1000

#Pos
execute if data entity @s ArmorItems[2].tag.anim[0].position.x.value run data modify entity @s Pose.RightLeg[0] set from entity @s ArmorItems[2].tag.anim[0].position.x.value
execute if data entity @s ArmorItems[2].tag.anim[0].position.y.value run data modify entity @s Pose.RightLeg[1] set from entity @s ArmorItems[2].tag.anim[0].position.y.value
execute if data entity @s ArmorItems[2].tag.anim[0].position.z.value run data modify entity @s Pose.RightLeg[2] set from entity @s ArmorItems[2].tag.anim[0].position.z.value
scoreboard players reset @s _anim_px
scoreboard players reset @s _anim_py
scoreboard players reset @s _anim_pz
scoreboard players reset @s _anim_px_ease
scoreboard players reset @s _anim_py_ease
scoreboard players reset @s _anim_pz_ease
execute store result score @s _anim_px run data get entity @s ArmorItems[2].tag.anim[0].position.x.add 1000
execute store result score @s _anim_py run data get entity @s ArmorItems[2].tag.anim[0].position.y.add 1000
execute store result score @s _anim_pz run data get entity @s ArmorItems[2].tag.anim[0].position.z.add 1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].position.x.type
execute if score @s _anim_calc matches 2 store result score @s _anim_px_ease run data get entity @s ArmorItems[2].tag.anim[0].position.x.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_px_ease run data get entity @s ArmorItems[2].tag.anim[0].position.x.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].position.y.type
execute if score @s _anim_calc matches 2 store result score @s _anim_py_ease run data get entity @s ArmorItems[2].tag.anim[0].position.y.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_py_ease run data get entity @s ArmorItems[2].tag.anim[0].position.y.ease_add -1000
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].position.z.type
execute if score @s _anim_calc matches 2 store result score @s _anim_pz_ease run data get entity @s ArmorItems[2].tag.anim[0].position.z.ease_add 1000
execute if score @s _anim_calc matches 3 store result score @s _anim_pz_ease run data get entity @s ArmorItems[2].tag.anim[0].position.z.ease_add -1000

#Extra
execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].extra.body
execute if score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.body run data modify entity @s ArmorItems[2].tag.anim[0].extra.body set value {id:"minecraft:stone",Count:1b}
execute if data entity @s ArmorItems[2].tag.anim[0].extra.body run data modify entity @s ArmorItems[2].tag.anim[0].extra.body.tag.anim set from entity @s ArmorItems[2].tag.anim
execute if data entity @s ArmorItems[2].tag.anim[0].extra.body run data modify entity @s ArmorItems[2] set from entity @s ArmorItems[2].tag.anim[0].extra.body

execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].extra.head
execute if score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.head run data remove entity @s ArmorItems[3]
execute unless score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.head run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[2].tag.anim[0].extra.head

execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].extra.r_arm
execute if score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.r_arm run data remove entity @s HandItems[0].id
execute unless score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.r_arm run data modify entity @s HandItems[0] set from entity @s ArmorItems[2].tag.anim[0].extra.r_arm

execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].extra.l_arm
execute if score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.l_arm run data remove entity @s HandItems[1].id
execute unless score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.l_arm run data modify entity @s HandItems[1] set from entity @s ArmorItems[2].tag.anim[0].extra.l_arm

execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].extra.legg
execute if score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.legg run data remove entity @s ArmorItems[1].id
execute unless score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.legg run data modify entity @s ArmorItems[1] set from entity @s ArmorItems[2].tag.anim[0].extra.legg

execute store result score @s _anim_calc run data get entity @s ArmorItems[2].tag.anim[0].extra.boots
execute if score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.boots run data remove entity @s ArmorItems[0].id
execute unless score @s _anim_calc matches 1 if data entity @s ArmorItems[2].tag.anim[0].extra.boots run data modify entity @s ArmorItems[0] set from entity @s ArmorItems[2].tag.anim[0].extra.boots


execute if data entity @s ArmorItems[2].tag.anim[0].extra.invisible run data modify entity @s Invisible set from entity @s ArmorItems[2].tag.anim[0].extra.invisible
execute if data entity @s ArmorItems[2].tag.anim[0].extra.marker run data modify entity @s Marker set from entity @s ArmorItems[2].tag.anim[0].extra.marker
execute if data entity @s ArmorItems[2].tag.anim[0].extra.arms run data modify entity @s ShowArms set from entity @s ArmorItems[2].tag.anim[0].extra.arms
execute if data entity @s ArmorItems[2].tag.anim[0].extra.small run data modify entity @s Small set from entity @s ArmorItems[2].tag.anim[0].extra.small

data remove entity @s ArmorItems[2].tag.anim[0]
execute store result score @s _anim_tick run data get entity @s ArmorItems[2].tag.anim[0].tick_left

#FIX: set anim_part's body armor as `stone` and `count 1` to be able to paste data into it even through it's empty