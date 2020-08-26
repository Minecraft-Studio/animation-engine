execute store result score $_part_search1 _anim run data get storage anim:editor anim_part_select_search[0][0]
execute store result score $_part_search2 _anim run data get storage anim:editor anim_part_select_search[0][1]
data remove storage anim:editor anim_part_select_search[0]
execute if score $_part_search1 _anim = @s _anim_id_player if score $_part_search2 _anim = @e[tag=anim_search_part,limit=1] _anim_idb run tag @e[tag=anim_search_part,limit=1] add anim_part_select
execute if data storage anim:editor anim_part_select_search[0] run function anim_edit:search_part_editor2