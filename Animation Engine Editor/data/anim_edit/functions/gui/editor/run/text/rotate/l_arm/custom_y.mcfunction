data remove storage anim:editor key_custom.rotate.l_arm.y
tellraw @s ["",{"text":"\n To set a custom number for ","color":"gray"},{"text":"y ","color":"green"},{"text":"click here\n","underlined":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor key_custom.rotate.l_arm.y set value "}}]
function anim_edit:gui/editor/run/text/rotate/l_arm/custom_y_checker
