function anim_edit:get_move_shortcuts
execute store result score $_calc_value _anim run data get storage anim:editor value_move_shortcuts.add2
scoreboard players operation @s _anim_page += $_calc_value _anim
scoreboard players reset $_calc_value _anim
function anim_edit:gui/editor/load