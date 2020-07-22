#>Gets animations id from saved data and stores data
# Input: $animation_id _anim; anim:editor tmp_anim_from; (anim:editor compile_for_save)
# Output: anim:editor tmp_anim_result
scoreboard players add $__get_save _anim 1
execute store result score $__got_save _anim run data get storage anim:editor tmp_anim_from[0].id
execute if score $__got_save _anim = $animation_id _anim run data modify storage anim:editor tmp_anim_from[0] set from storage anim:editor compile_for_save
execute if score $__got_save _anim = $animation_id _anim if score $_api_save_loop _anim matches 1 run data modify storage anim:editor tmp_anim_from[0].keyframes set from storage anim:editor keyframes
execute if score $__got_save _anim = $animation_id _anim run scoreboard players set $__found_save _anim 1
data modify storage anim:editor tmp_anim_result append from storage anim:editor tmp_anim_from[0]
data remove storage anim:editor tmp_anim_from[0]
scoreboard players reset $__got_save _anim
execute unless data storage anim:editor tmp_anim_from[0] unless score $__found_save _anim matches 1 run data modify storage anim:editor tmp_anim_result append from storage anim:editor compile_for_save
execute unless data storage anim:editor tmp_anim_from[0] if score $_api_save_loop _anim matches 1 unless score $__found_save _anim matches 1 run tellraw @p[tag=anim_user] [{"text":"An error has occured, failed saving the animation! Error Code: 1\nBackup has been created so use that to restore your data!\n\nPlease report this bug at ","color":"red"},{"text":"vanjmali.com/bug-report","clickEvent": {"action": "open_url","value": "https://vanjmali.com/bug-report"},"color":"yellow","underlined": true}," an provide info what you did to make it happen"]
execute if data storage anim:editor tmp_anim_from[0] run function anim_edit:gui/editor/run/search/compile/save_loop