data modify entity @e[tag=anim_main_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 0b
tag @e[tag=anim_main_select] remove anim_main_select
tag @e[tag=anim_part_menu] remove anim_part_menu
execute unless score $main_page _anim matches -2147483648..2147483647 run scoreboard players set $main_page _anim 1
#>Title
tellraw @p[tag=anim_user] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMenu","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
tellraw @p[tag=anim_user] {"text":"Select anim model:","color":"gray"}
#>Render Anim Models
function anim_edit:gui/main/run/menu3/get/start
#>Current Page
execute if score $main_page _anim matches ..1 run tellraw @p[tag=anim_user] [{"text":"Page:","color":"yellow"},{"text":" <","color":"gray"}," ",{"score":{"name":"$main_page","objective": "_anim"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}}]
execute if score $main_page _anim matches 2.. run tellraw @p[tag=anim_user] [{"text":"Page:","color":"yellow"},{"text":" <","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_down"}}," ",{"score":{"name":"$main_page","objective": "_anim"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}}]

#>Gamerule
function anim_edit:gamerule/