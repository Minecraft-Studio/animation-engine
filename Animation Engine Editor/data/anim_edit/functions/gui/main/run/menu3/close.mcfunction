tellraw @p[tag=anim_user] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMenu closed","color":"aqua"}
scoreboard players reset $show_menu _anim
tag @p[tag=anim_user] remove anim_user
function anim_edit:gamerule