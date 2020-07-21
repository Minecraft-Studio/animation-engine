#>Display red column for current playing animation
scoreboard objectives add _anim_editor_c0l dummy
execute as @e[tag=anim_editor] run scoreboard players operation @s _anim_editor_c0l = @s _anim_editor_col
execute as @e[tag=anim_editor] run scoreboard players operation @s _anim_editor_c0l += $page _anim
execute as @e[tag=anim_editor0] run function anim_edit:gui/editor/reset
execute as @e[tag=anim_editor0] if score @s _anim_editor_c0l = $editor_play_tick _anim run data merge entity @s {CustomName:'{"text":"/","color":"#ff5252"}'}
scoreboard objectives remove _anim_editor_c0l