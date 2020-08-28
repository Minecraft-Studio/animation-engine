#
#>Gets settings for moving ticks in keyframe editor
# Input:
# Output: anim:editor value_move_shortcuts
scoreboard players reset $_got_p_id _anim
data remove storage anim:editor value_move_shortcuts
execute unless data storage anim:editor search_move_shortcuts run data modify storage anim:editor search_move_shortcuts set from storage anim:editor move_shortcuts
execute store result score $_got_p_id _anim run data get storage anim:editor search_move_shortcuts[0].id
execute if score $_got_p_id _anim = @s _anim_id_player run data modify storage anim:editor value_move_shortcuts set from storage anim:editor search_move_shortcuts[0]
data remove storage anim:editor search_move_shortcuts[0]

execute if data storage anim:editor search_move_shortcuts[0] unless data storage anim:editor value_move_shortcuts run function anim_edit:get_move_shortcuts
data remove storage anim:editor search_move_shortcuts