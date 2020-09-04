execute if score @s _anim_sett_gmrle matches 1 run scoreboard players set @s _anim_sett_gmrle 2
execute unless score @s _anim_sett_gmrle matches 1..2 run scoreboard players set @s _anim_sett_gmrle 1
execute if score @s _anim_sett_gmrle matches 2 run scoreboard players set @s _anim_sett_gmrle 0
function anim_edit:gui/settings/load