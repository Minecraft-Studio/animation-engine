data remove storage anim:editor key_custom.rotate.l_arm.x
tellraw @s ["",{"text":"\n To set a custom number for ","color":"gray"},{"text":"x ","color":"red"},{"text":"click here\n","underlined":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor key_custom.rotate.l_arm.x set value "}}]
function anim:gui/editor/run/text/rotate/l_arm/custom_x_checker
