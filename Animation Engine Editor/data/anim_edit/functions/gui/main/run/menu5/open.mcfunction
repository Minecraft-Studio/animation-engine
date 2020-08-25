#>Selects the animation and loads it
#>Gets the data
scoreboard players operation $_id_search _anim = $selected_animation _anim
data modify storage anim:editor tmp_anim_model_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get_anim/start
#>Applies data
data remove storage anim:editor keyframes
data modify storage anim:editor keyframes set from storage anim:editor anim_data.keyframes
execute store result score $animation_id _anim run data get storage anim:editor anim_data.id
scoreboard players reset $selected_animation _anim
#>Opens Editor
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 0b
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
function anim_edit:editor
function anim_edit:gamerule