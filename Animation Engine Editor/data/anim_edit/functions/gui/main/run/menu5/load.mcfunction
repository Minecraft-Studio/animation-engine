#>Gives Anim Model glow effect
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 0b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 1b

#>Loads Anim Editor Menu
execute unless score @s _anim_page matches -2147483648..2147483647 run scoreboard players set @s _anim_page 1
scoreboard players set @s _anim_menu 5
#>Title
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnimations","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
#>Name
tellraw @s [{"text":"Anim model name: ","color":"gray"},{"nbt":"CustomName","entity":"@e[tag=anim_main_select,limit=1]","interpret":true,"color":"green"}," ",{"text":"[Edit]","color":"yellow","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu5/edit"}}]
#>Animations List Render
tellraw @s {"text":"\nAnimations list:","color":"gray"}
function anim_edit:gui/main/run/menu5/get/start
#>Current Page
execute if score @s _anim_page matches ..1 run tellraw @s [{"text":"Page:","color":"yellow"},{"text":" <","color":"gray"}," ",{"score":{"name":"@s","objective": "_anim_page"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}},"\n"]
execute if score @s _anim_page matches 2.. run tellraw @s [{"text":"Page:","color":"yellow"},{"text":" <","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_down"}}," ",{"score":{"name":"@s","objective": "_anim_page"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}},"\n"]
#>Menu Buttons
execute unless score $selected_animation _anim matches 1.. run tellraw @s ["",{"text":"[< Back]","color":"#a64ca6","hoverEvent":{"action":"show_text","contents":{"text":"Goes back to main menu","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if score @s _anim_menu matches 5 run function anim_edit:gui/main/run/menu5/back"}}," ",{"text":"[Delete]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Deletes selected animation","color":"red"}}}," ",{"text":"[Duplicate]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Duplicates selected animation to a new animation","color":"gray"}}}," ",{"text":"[Edit]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Edit selected animation","color":"gray"}}}," ",{"text":"[Open]","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Opens the animation in the editor","color":"gray"}}}]
execute if score $selected_animation _anim matches 1.. run tellraw @s ["",{"text":"[< Back]","color":"#a64ca6","hoverEvent":{"action":"show_text","contents":{"text":"Goes back to main menu","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if score @s _anim_menu matches 5 run function anim_edit:gui/main/run/menu5/back"}}," ",{"text":"[Delete]","color":"red","clickEvent": {"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/delete_confirm"},"hoverEvent":{"action": "show_text","contents":{"text":"Deletes selected animation","color":"red"}}}," ",{"text":"[Duplicate]","color":"aqua","hoverEvent":{"action": "show_text","contents":{"text":"Duplicates selected animation to a new animation","color":"gray"}}}," ",{"text":"[Edit]","color":"gold","hoverEvent":{"action": "show_text","contents":{"text":"Edit selected animation","color":"gray"}}}," ",{"text":"[Open]","color":"yellow","hoverEvent":{"action": "show_text","contents":{"text":"Opens the animation in the editor","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if score @s _anim_menu matches 5 run function anim_edit:gui/main/run/menu5/open"}}]

#>Gamerule
function anim_edit:gamerule