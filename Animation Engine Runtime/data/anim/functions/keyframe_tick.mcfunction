scoreboard players remove @s _anim_tick 1

# FIX: Make it more performance: make multiple mcfunctions for each
# Head
execute if score @s _anim_hx matches -2147483648..2147483647 run function anim:add/head/x
execute if score @s _anim_hy matches -2147483648..2147483647 run function anim:add/head/y
execute if score @s _anim_hz matches -2147483648..2147483647 run function anim:add/head/z
# Body
execute if score @s _anim_bx matches -2147483648..2147483647 run function anim:add/body/x
execute if score @s _anim_by matches -2147483648..2147483647 run function anim:add/body/y
execute if score @s _anim_bz matches -2147483648..2147483647 run function anim:add/body/z
# Left Arm
execute if score @s _anim_lax matches -2147483648..2147483647 run function anim:add/l_arm/x
execute if score @s _anim_lay matches -2147483648..2147483647 run function anim:add/l_arm/y
execute if score @s _anim_laz matches -2147483648..2147483647 run function anim:add/l_arm/z
# Right Arm
execute if score @s _anim_rax matches -2147483648..2147483647 run function anim:add/r_arm/x
execute if score @s _anim_ray matches -2147483648..2147483647 run function anim:add/r_arm/y
execute if score @s _anim_raz matches -2147483648..2147483647 run function anim:add/r_arm/z
# Left Leg
execute if score @s _anim_llx matches -2147483648..2147483647 run function anim:add/l_leg/x
execute if score @s _anim_lly matches -2147483648..2147483647 run function anim:add/l_leg/y
execute if score @s _anim_llz matches -2147483648..2147483647 run function anim:add/l_leg/z
# Right Leg
execute if score @s _anim_rlx matches -2147483648..2147483647 run function anim:add/r_leg/x
execute if score @s _anim_rly matches -2147483648..2147483647 run function anim:add/r_leg/y
execute if score @s _anim_rlz matches -2147483648..2147483647 run function anim:add/r_leg/z


#If 0 load next keyframe
execute if score @s _anim_tick matches ..0 unless data entity @s ArmorItems[2].tag.anim[0] run function anim:end_animation
execute if score @s _anim_tick matches ..0 if data entity @s ArmorItems[2].tag.anim[0] run function anim:zero_tick