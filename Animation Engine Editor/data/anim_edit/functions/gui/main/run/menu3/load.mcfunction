execute unless score $main_page _anim matches -2147483648..2147483647 run scoreboard players set $main_page _anim 1
tellraw @p[tag=anim_user] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMenu","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
tellraw @p[tag=anim_user] {"text":"Select anim model:","color":"gray"}
function anim_edit:gui/main/run/menu3/get/start