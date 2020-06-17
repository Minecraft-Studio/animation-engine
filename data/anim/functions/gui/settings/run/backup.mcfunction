execute if score $sett_bckp _anim matches 1 run scoreboard players set $sett_bckp _anim 2
execute unless score $sett_bckp _anim matches 1..2 run scoreboard players set $sett_bckp _anim 1
execute if score $sett_bckp _anim matches 2 run scoreboard players set $sett_bckp _anim 0
function anim:gui/settings/load