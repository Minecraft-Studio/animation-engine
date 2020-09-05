#
#>get clipboard from player ID
# Input: @s _anim_id_player; clipboards
# Output: clipboard; output_clipboards
scoreboard players reset $_got_p_id _anim
execute unless data storage anim:editor search_clipboard run data remove storage anim:editor clipboard
execute unless data storage anim:editor search_clipboard run data modify storage anim:editor output_clipboards set value []
execute unless data storage anim:editor search_clipboard run data modify storage anim:editor search_clipboard set from storage anim:editor clipboards
execute store result score $_got_p_id _anim run data get storage anim:editor search_clipboard[0].id
execute if score $_got_p_id _anim = @s _anim_id_player run data modify storage anim:editor clipboard set from storage anim:editor search_clipboard[0]
execute unless score $_got_p_id _anim = @s _anim_id_player run data modify storage anim:editor output_clipboards append from storage anim:editor search_clipboard[0]
data remove storage anim:editor search_clipboard[0]
execute if data storage anim:editor search_clipboard[0] run function anim_edit:get_clipboard
data remove storage anim:editor search_clipboard
