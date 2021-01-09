function anim_edit:search_model
#>Selects the animation and loads it
#>Gets the data
scoreboard players operation $_id_search _anim = @s _anim_anim_id
data modify storage anim:editor tmp_anim_main_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get_anim/start
#>Applies data
data modify storage anim:editor open_animation set from storage anim:editor anim_data
execute store result storage anim:editor open_animation.id int 1 run scoreboard players get @s _anim_id_player
execute store result score $animation_id _anim run data get storage anim:editor anim_data.id
scoreboard players reset @s _anim_anim_id
#>Opens Editor
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 0b
scoreboard players set @s _anim_row_page 1
function anim_edit:gui/editor/load
function anim_edit:gamerule