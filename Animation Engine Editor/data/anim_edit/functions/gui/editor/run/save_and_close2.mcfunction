#>Save (Continued)
scoreboard players reset $_api_endcomp _anim
scoreboard players set $_api_save_loop _anim 1
data modify storage anim:editor tmp_anim_from set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/editor/run/search/compile/save_loop
data modify entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations set from storage anim:editor tmp_anim_result
data remove storage anim:editor tmp_anim_from
data remove storage anim:editor tmp_anim_tmp
data remove storage anim:editor tmp_anim_result
scoreboard players reset $__get_save _anim
scoreboard players reset $_api_save_loop _anim
scoreboard players reset $__found_save _anim
#>Close
kill @e[tag=anim_menu]
execute at @p[tag=anim_user] run tp @e[tag=anim_selector] ~ 0 ~
kill @e[tag=anim_selector]
scoreboard players set $show_menu _anim 5
function anim_edit:gui/main/load