data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old
data remove storage anim:editor result_comp_tick
data remove storage anim:editor result_comp_tick_old
execute unless score $_api_endcomp _anim matches 5 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run data modify entity @s ArmorItems[2].tag.anim set from storage anim:editor result_comp
execute unless score $_api_endcomp _anim matches 5 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim unless data storage anim:editor result_comp run data remove entity @s ArmorItems[2].tag.anim
execute if score $_api_endcomp _anim matches 5 if data storage anim:editor result_comp run data modify storage anim:editor compile_for_save.data set from storage anim:editor result_comp
execute if score $_api_endcomp _anim matches 5 unless data storage anim:editor result_comp run data merge storage anim:editor {compile_for_save:{data:[]}}
execute if score $_api_endcomp _anim matches 5 store result storage anim:editor compile_for_save.id int 1 run scoreboard players get $animation_id _anim
execute if score $_api_endcomp _anim matches 5 run data modify storage anim:editor tmp_anim_from set value []
execute if score $_api_endcomp _anim matches 5 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run data modify storage anim:editor tmp_anim_from set from entity @s ArmorItems[2].tag.animations
execute if score $_api_endcomp _anim matches 5 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run tellraw @p ["before: ",{"nbt":"ArmorItems[2].tag.animations","entity":"@s","color":"dark_purple"}]
execute if score $_api_endcomp _anim matches 5 run function anim_edit:gui/editor/run/search/compile/save_loop
execute if score $_api_endcomp _anim matches 5 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run data modify entity @s ArmorItems[2].tag.animations set from storage anim:editor tmp_anim_result
execute if score $_api_endcomp _anim matches 5 run data remove storage anim:editor tmp_anim_from
execute if score $_api_endcomp _anim matches 5 run data remove storage anim:editor tmp_anim_result
execute if score $_api_endcomp _anim matches 5 run data remove storage anim:editor compile_for_save
execute if score $_api_endcomp _anim matches 5 run scoreboard players reset $__get_save _anim
execute if score $_api_endcomp _anim matches 5 run scoreboard players reset $__found_save _anim
execute if score $_api_endcomp _anim matches 5 as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run tellraw @p ["after: ",{"nbt":"ArmorItems[2].tag.animations","entity":"@s","color":"dark_purple"}]
data remove storage anim:editor result_comp
scoreboard players set $_get_tick _anim 0
scoreboard players add $_get_part _anim 1
say END