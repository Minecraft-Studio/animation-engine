data remove storage anim:editor key_custom.rotate.l_leg.x
tellraw @s ["",{"text":"\n To set a custom number for ","color":"gray"},{"text":"x ","color":"red"},{"text":"click here\n","underlined":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor key_custom.rotate.l_leg.x set value "}}]
function anim_edit:gui/editor/value_editor/rotate/l_leg/custom_x_checker
