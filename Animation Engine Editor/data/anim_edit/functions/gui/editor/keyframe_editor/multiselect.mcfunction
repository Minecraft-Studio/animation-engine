#
#>Toggle multiselect
execute unless score @s _anim_multisel matches 1 run scoreboard players set @s _anim_multisel 2
# Off
execute if score @s _anim_multisel matches 1 run function anim_edit:gui/editor/keyframe_editor/deselect_all_keyframes
execute if score @s _anim_multisel matches 1 run scoreboard players set @s _anim_multisel 0
# On
execute if score @s _anim_multisel matches 2 run scoreboard players set @s _anim_multisel 1

function anim_edit:gui/editor/load 