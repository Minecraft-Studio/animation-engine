#
#>Selects the animation
scoreboard players operation $_prev_sel_anim _anim = @s _anim_anim_id
scoreboard players operation @s _anim_anim_id = @s _anim_page
scoreboard players remove @s _anim_anim_id 1
scoreboard players operation @s _anim_anim_id *= $7 _anim
scoreboard players add @s _anim_anim_id 4
execute if score $_prev_sel_anim _anim = @s _anim_anim_id run scoreboard players reset @s _anim_anim_id
scoreboard players reset $_prev_sel_anim _anim
function anim_edit:gui/main/load