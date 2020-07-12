#Setups anim_part for playing the selected animation
# Creates needed objectives to store data
execute unless score $anim_playing _anim matches 1.. run function anim:create_obj
# Adds 1 to $anim_playing, this is used to keep track of number of currently playing animations, if 0 removes the objectives
scoreboard players add $anim_playing _anim 1

scoreboard players set @s _anim_tick 0
scoreboard players set @s _anim_tick_left 0

#FIX: LOAD ID OF THE ANIMATION IN _ANIM, TEMP SET TO 1
scoreboard players set @s _anim 1

#CALC
scoreboard objectives add _anim_calc2 dummy
scoreboard objectives add _anim_calc3 dummy
scoreboard objectives add _anim_calc4 dummy
scoreboard objectives add _anim_calc5 dummy
scoreboard objectives add _anim_calc6 dummy
scoreboard objectives add _anim_calc7 dummy
scoreboard objectives add _anim_calc_type dummy
execute store result score @s _anim_calc2 run data get entity @s ArmorItems[2].tag.anim[0].tick
execute store result score @s _anim_tick_left run scoreboard players operation @s _anim_calc2 -= $1 _anim

execute store result score @s _anim_calc_type run data get entity @s ArmorItems[2].tag.anim[0].extra.rotate
# Head x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Head[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.head.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_hx run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_hx_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# Head y
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Head[1] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.head.y
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_hy run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_hy_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# Head z
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Head[2] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.head.z
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_hz run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_hz_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000

# Body x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Body[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.body.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_bx run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_bx_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# Body y
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Body[1] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.body.y
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_by run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_by_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# Body z
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.Body[2] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.body.z
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_bz run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_bz_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000

# LeftArm x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.LeftArm[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_lax run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_lax_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# LeftArm y
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.LeftArm[1] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.y
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_lay run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_lay_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# LeftArm z
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.LeftArm[2] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.l_arm.z
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_laz run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_laz_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000

# RightArm x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.RightArm[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_rax run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_rax_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# RightArm y
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.RightArm[1] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.y
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_ray run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_ray_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# RightArm z
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.RightArm[2] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.r_arm.z
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_raz run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_raz_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000

# LeftLeg x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.LeftLeg[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_llx run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_llx_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# LeftLeg y
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.LeftLeg[1] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.y
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_lly run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_lly_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# LeftLeg z
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.LeftLeg[2] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.l_leg.z
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_llz run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_llz_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000

# RightLeg x
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.RightLeg[0] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.x
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_rlx run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_rlx_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# RightLeg y
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.RightLeg[1] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.y
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_rly run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_rly_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000
# RightLeg z
scoreboard players reset @s _anim_calc
data remove entity @s ArmorItems[2].tag.anim_get
data remove entity @s ArmorItems[2].tag.anim_result
execute store result score @s _anim_calc run data get entity @s Pose.RightLeg[2] 1000
execute if score @s _anim_calc matches -2147483648..2147483647 run data modify entity @s ArmorItems[2].tag.anim_get set from entity @s ArmorItems[2].tag.anim[0].rotate.r_leg.z
execute if score @s _anim_calc matches -2147483648..2147483647 if data entity @s ArmorItems[2].tag.anim_get unless score @s _anim_calc_type matches 4 run function anim:compiler
execute store result score @s _anim_rlz run data get entity @s ArmorItems[2].tag.anim_result.add 1000
execute store result score @s _anim_rlz_ease run data get entity @s ArmorItems[2].tag.anim_result.ease_add 1000

#Apply
scoreboard objectives remove _anim_calc2
scoreboard objectives remove _anim_calc3
scoreboard objectives remove _anim_calc4
scoreboard objectives remove _anim_calc5
scoreboard objectives remove _anim_calc6
scoreboard objectives remove _anim_calc_type
