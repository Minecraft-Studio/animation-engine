#
#>Gives tag 'anim_model_part' to model that have the same idb number as player has it selected (for editor menu only)
function anim_edit:search_model
data modify storage anim:editor anim_part_select_search set from storage anim:editor anim_part_selection
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida run tag @s add anim_search_part
function anim_edit:search_part_editor2
scoreboard players reset $_part_search1 _anim
scoreboard players reset $_part_search2 _anim
data remove storage anim:editor anim_part_select_search
tag @e[tag=anim_search_part] remove anim_search_part