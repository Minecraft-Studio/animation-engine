#>Gives Anim Model glow effect
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 0b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 1b

#>Loads Anim Editor Menu
execute unless score $main_page _anim matches -2147483648..2147483647 run scoreboard players set $main_page _anim 1
scoreboard players set $show_menu _anim 5
#>Title
tellraw @p[tag=anim_user] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnimations","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
#>Name
tellraw @p[tag=anim_user] [{"text":"Anim model name: ","color":"gray"},{"nbt":"CustomName","entity":"@e[tag=anim_main_select,limit=1]","interpret":true,"color":"green"}," ",{"text":"[Edit]","color":"yellow","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu5/edit"}}]
#>Animations List Render
tellraw @p[tag=anim_user] {"text":"\nAnimations list:","color":"gray"}
function anim_edit:gui/main/run/menu5/get/start
#>Current Page
execute if score $main_page _anim matches ..1 run tellraw @p[tag=anim_user] [{"text":"Page:","color":"yellow"},{"text":" <","color":"gray"}," ",{"score":{"name":"$main_page","objective": "_anim"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}},"\n"]
execute if score $main_page _anim matches 2.. run tellraw @p[tag=anim_user] [{"text":"Page:","color":"yellow"},{"text":" <","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_down"}}," ",{"score":{"name":"$main_page","objective": "_anim"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}},"\n"]
#>Menu Buttons
execute unless score $anim_selected _anim matches 1.. run tellraw @p[tag=anim_user] ["",{"text":"[< Back]","color":"#a64ca6","hoverEvent":{"action":"show_text","contents":{"text":"Goes back to main menu","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select] if score $show_menu _anim matches 5 run function anim_edit:gui/main/run/menu5/back"}}," ",{"text":"[Delete]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Deletes selected animation","color":"red"}}}," ",{"text":"[Duplicate]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Duplicates selected animation to a new animation","color":"gray"}}}," ",{"text":"[Edit]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Edit selected animation","color":"gray"}}}," ",{"text":"[Open]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Opens the animation in the editor","color":"gray"}}}]
execute if score $anim_selected _anim matches 1.. run tellraw @p[tag=anim_user] ["",{"text":"[< Back]","color":"#a64ca6","hoverEvent":{"action":"show_text","contents":{"text":"Goes back to main menu","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select] if score $show_menu _anim matches 5 run function anim_edit:gui/main/run/menu5/back"}}," ",{"text":"[Delete]","color":"red","clickEvent": {"action": "run_command","value": "/function anim_edit:gui/main/menu5/delete_confirm"},"hoverEvent":{"action": "show_text","contents":{"text":"Deletes selected animation","color":"red"}}}," ",{"text":"[Duplicate]","color":"aqua","hoverEvent":{"action": "show_text","contents":{"text":"Duplicates selected animation to a new animation","color":"gray"}}}," ",{"text":"[Edit]","color":"gold","hoverEvent":{"action": "show_text","contents":{"text":"Edit selected animation","color":"gray"}}}," ",{"text":"[Open]","color":"yellow","hoverEvent":{"action": "show_text","contents":{"text":"Opens the animation in the editor","color":"gray"}}}]

#>Gamerule
function anim_edit:gamerule