#>Selects the animation and loads it
#>Gets the data
scoreboard players operation $_id_search _anim = $main_page _anim
scoreboard players remove $_id_search _anim 1
scoreboard players operation $_id_search _anim *= $7 _anim
scoreboard players add $_id_search _anim 4
data modify storage anim:editor tmp_anim_model_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get_anim/start
#>Applies data
data remove storage anim:editor keyframes
data modify storage anim:editor keyframes set from storage anim:editor anim_data.keyframes
execute store result score $animation_id _anim run data get storage anim:editor anim_data.id
#>Opens Editor
function anim_edit:editor