data remove storage anim:editor key_custom.rotate.body.x
tellraw @s ["",{"text":"\n To set a custom number for ","color":"gray"},{"text":"x ","color":"red"},{"text":"click here\n","underlined":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor key_custom.rotate.body.x set value "}}]
function anim_edit:gui/editor/value_editor/rotate/body/custom_x_checker
