#
#>Returns animation keyframes
# Input: @s _anim_anim_id
# Output: anim:editor anim_data
data remove storage anim:editor anim_data
scoreboard players reset $_got_id _anim
execute unless data storage anim:editor search_anim_data unless entity @s[tag=anim_model] run function anim_edit:search_model
execute unless data storage anim:editor search_anim_data unless entity @s[tag=anim_model] run data modify storage anim:editor search_anim_data set from entity @e[tag=anim_model_select,limit=1] ArmorItems[2].tag.animations
execute unless data storage anim:editor search_anim_data if entity @s[tag=anim_model] run data modify storage anim:editor search_anim_data set from entity @s ArmorItems[2].tag.animations
execute store result score $_got_id _anim run data get storage anim:editor search_anim_data[0].animation_id
execute if score $_got_id _anim = @s _anim_anim_id run data modify storage anim:editor anim_data set from storage anim:editor search_anim_data[0]
# tellraw @p ["go it ",{"nbt":"search_anim_data[0]","storage":"anim:editor"}]
# tellraw @p ["go it ",{"score":{"name":"@s","objective":"_anim_anim_id"}}]
# tellraw @p ["go it ",{"score":{"name":"$_got_id","objective":"_anim"}}]
data remove storage anim:editor search_anim_data[0]

execute if data storage anim:editor search_anim_data[0] unless data storage anim:editor anim_data run function anim_edit:get_anim_keyframes
data remove storage anim:editor search_anim_data
