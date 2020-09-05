#
#>Gives tag 'anim_model_part' to model that have the same idb number as player has it selected (for editor menu only)
function anim_edit:search_model
scoreboard players reset $_got_part _anim
scoreboard players operation $_got_part _anim = @s _anim_editor_row
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim_idb = $_got_part _anim run tag @s add anim_part_select