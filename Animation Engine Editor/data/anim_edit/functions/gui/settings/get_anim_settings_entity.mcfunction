#>anim_edit:gui/settings/get_anim_settings_entity
#>Sets tag 'anim_settings_select' to player's anim settings entity (armor stand) if it exists
#>Input: { execute as: player }
scoreboard players operation $_p_id _anim = @s _anim_id_player
execute as @e[tag=anim_settings] if score @s _anim_id_player = $_p_id _anim run tag @s add anim_settings_select
scoreboard players reset $_p_id _anim