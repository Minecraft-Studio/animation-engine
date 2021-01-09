#
#>Deletes selected Animation
function anim_edit:search_model
scoreboard players set $_del_api _anim 1
scoreboard players operation $_id_search _anim = @s _anim_anim_id
data modify storage anim:editor tmp_anim_main_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get_anim/start
scoreboard players reset @s _anim_anim_id
function anim_edit:gui/main/load