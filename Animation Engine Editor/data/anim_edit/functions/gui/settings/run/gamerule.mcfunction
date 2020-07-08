execute if score $sett_gamerule _anim matches 1 run scoreboard players set $sett_gamerule _anim 2
execute unless score $sett_gamerule _anim matches 1..2 run scoreboard players set $sett_gamerule _anim 1
execute if score $sett_gamerule _anim matches 2 run scoreboard players set $sett_gamerule _anim 0
function anim_edit:gui/settings/load