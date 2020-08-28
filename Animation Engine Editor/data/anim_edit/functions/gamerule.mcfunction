execute if score @s _anim_sett_gmrle matches 1 unless score $gamerule _anim matches 0..1 store result score $gamerule _anim run gamerule sendCommandFeedback
execute if score @s _anim_sett_gmrle matches 1 run gamerule sendCommandFeedback false
execute if score @s _anim_sett_gmrle matches 1 run schedule function anim_edit:gamerule_set 1t