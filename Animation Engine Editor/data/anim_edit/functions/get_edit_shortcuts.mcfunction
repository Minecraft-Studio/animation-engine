#
#>Gets settings for moving ticks in keyframe editor
# Input:
# Output: anim:editor value_edit_shortcuts
scoreboard players reset $_got_p_od _anim
data remove storage anim:editor value_edit_shortcuts
execute unless data storage anim:editor search_edit_shortcuts run data modify storage anim:editor search_edit_shortcuts set from storage anim:editor edit_shortcuts
execute store result score $_got_p_id _anim run data get storage anim:editor search_edit_shortcuts[0].id
execute if score $_got_p_id _anim = @s _anim_id_player run data modify storage anim:editor value_edit_shortcuts set from storage anim:editor search_edit_shortcuts[0]
data remove storage anim:editor search_edit_shortcuts[0]

execute if data storage anim:editor search_edit_shortcuts[0] unless data storage anim:editor value_edit_shortcuts run function anim_edit:get_edit_shortcuts
data remove storage anim:editor search_edit_shortcuts