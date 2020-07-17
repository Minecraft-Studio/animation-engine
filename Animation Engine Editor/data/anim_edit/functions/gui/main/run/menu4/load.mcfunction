#>Loads Anim Editor Menu
execute unless score $main_page _anim matches -2147483648..2147483647 run scoreboard players set $main_page _anim 1
scoreboard players set $show_menu _anim 4
#>Title
tellraw @p[tag=anim_user] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnim Model","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
#>Name
execute unless score $_curr_air _anim matches 1 run tellraw @p[tag=anim_user] [{"text":"Anim model name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Click to set a new name","color":"gray"}},"clickEvent": {"action":"suggest_command","value":"/data modify storage anim:editor anim_model_cname set value "}},{"nbt":"CustomName","entity":"@e[tag=anim_main_select,limit=1]","interpret":true,"color":"green"}]
execute if score $_curr_air _anim matches 1 run tellraw @p[tag=anim_user] [{"text":"Anim model name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Stay in air block!","color":"red"}}},{"text":"Err","color":"red"}]
#>ID (FIX)
tellraw @p[tag=anim_user] [{"text":"Anim model ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this model (Currently non-changable, planned feature)","color":"gray"}}},{"text":" <"}," ",{"score":{"name":"@e[tag=anim_main_select,limit=1]","objective":"_anim_ida"},"color":"white"},{"text":" >"}]
#>Render connected parts
tellraw @p[tag=anim_user] {"text":"\nConnected anim parts:","color":"gray"}
function anim_edit:gui/main/run/menu4/get/start
#>Current Page
execute if score $main_page _anim matches ..1 run tellraw @p[tag=anim_user] [{"text":"Page:","color":"yellow"},{"text":" <","color":"gray"}," ",{"score":{"name":"$main_page","objective": "_anim"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}}]
execute if score $main_page _anim matches 2.. run tellraw @p[tag=anim_user] [{"text":"Page:","color":"yellow"},{"text":" <","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_down"}}," ",{"score":{"name":"$main_page","objective": "_anim"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}}]