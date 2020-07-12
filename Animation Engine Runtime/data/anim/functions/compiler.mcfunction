#FIX: Set it per each coordinate instead of for whole keyframe
execute store result entity @s ArmorItems[2].tag.anim_result.type int 1 run data get entity @s ArmorItems[2].tag.anim_get.type
execute store result score @s _anim_calc3 run data get entity @s ArmorItems[2].tag.anim_get.value 1000
scoreboard players operation @s _anim_calc4 = @s _anim_calc3
scoreboard players operation @s _anim_calc4 -= @s _anim_calc
scoreboard players operation @s _anim_calc4 /= @s _anim_calc2
# Extra: Ease In
execute if score @s _anim_calc_type matches 2 run function anim:compiler_ease_in
# Extra: Ease Out
execute if score @s _anim_calc_type matches 3 run function anim:compiler_ease_out
# execute store result entity @s ArmorItems[2].tag.anim_get.value float 0.001 run scoreboard players get $_comp_value _anim
execute unless score @s _anim_calc_type matches 4 store result entity @s ArmorItems[2].tag.anim_result.add float 0.001 run scoreboard players get @s _anim_calc4
execute if score @s _anim_calc_type matches 2 store result entity @s ArmorItems[2].tag.anim_result.ease_add float 0.001 run scoreboard players operation @s _anim_calc5 /= @s _anim_calc6
execute if score @s _anim_calc_type matches 3 store result entity @s ArmorItems[2].tag.anim_result.ease_add float -0.001 run scoreboard players get @s _anim_calc5
# execute store result entity @s last_compile_keyframe.rotate.head.x.value float 0.001 run scoreboard players get $_comp_value _anim
# execute store result entity @s last_compile_keyframe.rotate.head.x.tick int 1 run scoreboard players get $_get_tick _anim
# execute unless data entity @s ArmorItems[{tag:{anim_get:{type:4}}}] store result entity @s last_compile_keyframe.rotate.head.x.add float 0.001 run scoreboard players get @s _anim_calc4