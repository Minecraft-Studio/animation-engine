data remove storage anim:editor key_custom.rotate.l_leg.z
tellraw @s ["",{"text":"\n To set a custom number for ","color":"gray"},{"text":"z ","color":"blue"},{"text":"click here\n","underlined":true,"clickEvent":{"action":"suggest_command","value":"/data modify storage anim:editor key_custom.rotate.l_leg.z set value "}}]
function anim:gui/editor/run/text/rotate/l_leg/custom_z_checker
