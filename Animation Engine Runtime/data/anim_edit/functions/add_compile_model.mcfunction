#
#>Only run from compiler
# Input: runtime compile;
function anim_edit:get_anim_keyframes
tellraw @p {"nbt":"compile","storage":"anim:runtime","color":"dark_red"}
tellraw @p ["test",{"nbt":"anim_data","storage":"anim:editor","color":"gold"}]
data modify storage anim:editor anim_data.compile append from storage anim:runtime compile
# tellraw @p {"nbt":"anim_data","storage":"anim:editor","color":"gold"}
data remove storage anim:editor output_anim_data
data modify storage anim:editor search_anim_data set from entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:set_anim_keyframes
tellraw @p {"nbt":"output_anim_data[{animation_id:1}].compile","storage":"anim:editor","color":"red"}
data modify entity @s ArmorItems[2].tag.animations set from storage anim:editor output_anim_data
