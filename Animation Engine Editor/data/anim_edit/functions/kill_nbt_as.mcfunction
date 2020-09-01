#
#>Kills armor stand with tag 'anim_custom_nbt' and player's ID
scoreboard players reset $_p_id _anim
scoreboard players operation $_p_id _anim = @s _anim_id_player
execute as @e[tag=anim_custom_nbt] if score $_p_id _anim = @s _anim_id_player run kill @s
scoreboard players reset $_p_id _anim