execute if score $_value_set _anim matches 1 run data modify storage anim:editor value_edit_shortcuts.value_color set value '{"text":"","color":"white"}'
execute unless score $_value_set _anim matches 1 run data modify storage anim:editor value_edit_shortcuts.value_color set value '{"text":"","color":"gray"}'
execute if score $_value_set _anim matches 1 run data modify storage anim:editor value_edit_shortcuts.graph set value '{"nbt":"sel_graph","storage":"anim:editor","color":"white"}'
execute unless score $_value_set _anim matches 1 run data modify storage anim:editor value_edit_shortcuts.graph set value '{"text":"/","color":"dark_gray"}'
scoreboard players reset $_value_set _anim
function anim_edit:gui/editor/value_editor/get_decimals/start
execute if score $_dec_val3 _anim matches 0.. store result storage anim:editor value_edit_shortcuts.val3 int 1 run scoreboard players get $_dec_val3 _anim
execute unless score $_dec_val3 _anim matches 0.. run data modify storage anim:editor value_edit_shortcuts.val3 set value " "
execute if score $_dec_val4 _anim matches 0.. store result storage anim:editor value_edit_shortcuts.val4 int 1 run scoreboard players get $_dec_val4 _anim
execute unless score $_dec_val4 _anim matches 0.. run data modify storage anim:editor value_edit_shortcuts.val4 set value " "
tellraw @s [{"nbt":"value_edit_shortcuts.coord","storage":"anim:editor","interpret":true},{"nbt":"value_edit_shortcuts.buttons","storage":"anim:editor","interpret":true}," ",[{"text":"[Trans.: ","color":"yellow"},{"nbt":"value_edit_shortcuts.graph","storage":"anim:editor","interpret": true},"]"]]