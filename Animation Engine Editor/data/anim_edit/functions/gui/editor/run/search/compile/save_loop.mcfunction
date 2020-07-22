execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run say 1
#>Gets animations id from saved data and stores data
#>Input: $animation_id _anim; anim:editor tmp_anim_from; (anim:editor compile_for_save)
#>Output: anim:editor tmp_anim_result
# tellraw @p ["$_api_save_loop: ",{"score":{"name": "$_api_save_loop","objective": "_anim"}}]
# tellraw @p ["tmp_anim_from: ",{"nbt":"tmp_anim_from","storage":"anim:editor","color":"yellow"}]
scoreboard players add $__get_save _anim 1
execute store result score $__got_save _anim run data get storage anim:editor tmp_anim_from[0].id
execute if score $__got_save _anim = $animation_id _anim run data modify storage anim:editor tmp_anim_from[0] set from storage anim:editor compile_for_save
execute if score $__got_save _anim = $animation_id _anim if score $_api_save_loop _anim matches 1 run data modify storage anim:editor tmp_anim_from[0].keyframes set from storage anim:editor keyframes
execute if score $__got_save _anim = $animation_id _anim run scoreboard players set $__found_save _anim 1
data modify storage anim:editor tmp_anim_result append from storage anim:editor tmp_anim_from[0]
data remove storage anim:editor tmp_anim_from[0]
scoreboard players reset $__got_save _anim
execute unless score $__found_save _anim matches 1 run say 5
execute unless data storage anim:editor tmp_anim_from[0] run say 7
execute unless data storage anim:editor tmp_anim_from[0] unless score $__found_save _anim matches 1 run data modify storage anim:editor tmp_anim_result append from storage anim:editor compile_for_save
# tellraw @p ["tmp_anim_from: ",{"nbt":"tmp_anim_from","storage":"anim:editor","color":"gold"}]
# tellraw @p ["tmp_anim_result: ",{"nbt":"tmp_anim_result","storage":"anim:editor","color":"red"}]
execute unless data storage anim:editor tmp_anim_from[0] if score $_api_save_loop _anim matches 1 unless score $__found_save _anim matches 1 run tellraw @p[tag=anim_user] [{"text":"An error has occured, failed saving the animation! Error Code: 1\nBackup has been created so use that to restore your data!\n\nPlease report this bug at ","color":"red"},{"text":"vanjmali.com/bug-report","clickEvent": {"action": "open_url","value": "https://vanjmali.com/bug-report"},"color":"yellow","underlined": true}," an provide info what you did to make it happen"]
execute if data storage anim:editor tmp_anim_from[0] run function anim_edit:gui/editor/run/search/compile/save_loop