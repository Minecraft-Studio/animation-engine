#
#>Returns animation keyframes
# Input: @s _anim_anim_id
# Output: anim:editor anim_data
data remove storage anim:editor anim_data
scoreboard players reset $_got_id _anim
execute unless data storage anim:editor search_anim_data run function anim_edit:search_model
execute unless data storage anim:editor search_anim_data run data modify storage anim:editor search_anim_data set from entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations
execute store result score $_got_id _anim run data get storage anim:editor search_anim_data[0].id
execute if score $_got_id _anim = @s _anim_anim_id run data modify storage anim:editor anim_data set from storage anim:editor search_anim_data[0]
data remove storage anim:editor search_anim_data[0]

execute if data storage anim:editor search_anim_data[0] unless data storage anim:editor anim_data run function anim_edit:get_anim_keyframes
data remove storage anim:editor search_anim_data
