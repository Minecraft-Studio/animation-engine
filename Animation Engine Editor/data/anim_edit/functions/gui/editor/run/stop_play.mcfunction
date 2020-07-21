#>Stops the animation from the editor
scoreboard players reset $editor_play _anim
scoreboard players reset $editor_play_tick _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run function anim:end_animation
function anim_edit:gui/editor/reset
execute as @e[tag=anim_menu80] run function anim_edit:gui/editor/reset