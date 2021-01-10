#
#>Summons new Anim Main if it doesn't exists
function anim_edit:search_model
execute unless entity @e[tag=anim_main_select] at @s run function anim_edit:gui/main/run/new_model
#>Makes selected Anim Main glow
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 0b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 1b
scoreboard players reset @s _anim_idb_select

#>Loads Anim Editor Menu
function anim_edit:gui/main/run/ida/start
execute unless score @s _anim_page matches -2147483648..2147483647 run scoreboard players set @s _anim_page 1
scoreboard players set @s _anim_menu 4
#>Title
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnim Main","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"green"},"\n"]
#>Name
execute unless score $_curr_air _anim matches 1 run tellraw @s [{"text":"Anim main name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Click to set a new name","color":"gray"}},"clickEvent": {"action":"suggest_command","value":"/data modify storage anim:editor anim_main_cname set value "}},{"nbt":"CustomName","entity":"@e[tag=anim_main_select,limit=1]","interpret":true,"color":"green"}]
execute if score $_curr_air _anim matches 1 run tellraw @s [{"text":"Anim main name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Stay in air block!","color":"red"}}},{"text":"Err","color":"red"}]
#>ID (FIX)
execute unless score $prev_ida _anim matches 1.. run tellraw @s ["",{"text":"Anim main ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this model","color":"gray"}}},{"text":" <","color":"gray"}," ",{"score":{"name":"@e[tag=anim_main_select,limit=1]","objective":"_anim_ida"},"color":"white"},{"text":" >","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Next: ","color":"gray"},{"score":{"name": "$next_ida","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/ida/next"}}]
execute if score $prev_ida _anim matches 1.. run tellraw @s ["",{"text":"Anim main ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this model","color":"gray"}}},{"text":" <","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Previous: ","color":"gray"},{"score":{"name": "$prev_ida","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/ida/prev"}}," ",{"score":{"name":"@e[tag=anim_main_select,limit=1]","objective":"_anim_ida"},"color":"white"},{"text":" >","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Next: ","color":"gray"},{"score":{"name": "$next_ida","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/ida/next"}}]


#tellraw @s [{"text":"Anim main ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this model (Currently non-changable, planned feature)","color":"gray"}}},{"text":" <"}," ",{"score":{"name":"@e[tag=anim_main_select,limit=1]","objective":"_anim_ida"},"color":"white"},{"text":" >"}]
#>Render connected parts
tellraw @s {"text":"\nConnected anim parts:","color":"gray"}
function anim_edit:gui/main/run/menu4/get/start
#>Current Page
execute if score @s _anim_page matches ..1 run tellraw @s [{"text":"Page:","color":"yellow"},{"text":" <","color":"gray"}," ",{"score":{"name":"@s","objective": "_anim_page"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}},"\n"]
execute if score @s _anim_page matches 2.. run tellraw @s [{"text":"Page:","color":"yellow"},{"text":" <","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_down"}}," ",{"score":{"name":"@s","objective": "_anim_page"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}},"\n"]

#>Menu Buttons
# If new Anim Main and no anim parts connected:
execute unless entity @e[tag=anim_part_menu] if entity @e[tag=anim_main_select,tag=anim_main_new] run tellraw @s ["",{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Cancels and deletes the newly created anim mains and anim parts","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select,tag=anim_main_new] run function anim_edit:gui/main/run/menu4/delete"}}," ",{"text":"[Next]","color":"gray","hoverEvent":{"action": "show_text","contents":[{"text":"Continue with next steps on creating an animation","color":"gray"},{"text":"\nRequires at least 1 connected anim_part","color":"red"}]}}]
# If new Anim Main and there are anim parts connected:
execute if entity @e[tag=anim_part_menu] if entity @e[tag=anim_main_select,tag=anim_main_new] run tellraw @s ["",{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Cancels and deletes the newly created anim mains and anim parts","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select,tag=anim_main_new] run function anim_edit:gui/main/run/menu4/delete"}}," ",{"text":"[Next]","color":"green","hoverEvent":{"action": "show_text","contents":{"text":"Continue with next steps on creating an animation","color":"gray"}},"clickEvent":{"action":"run_command","value":"/execute if entity @e[tag=anim_main_select,tag=anim_main_new] if entity @e[tag=anim_part_menu] run function anim_edit:gui/main/run/menu4/save"}}]

# If not new Anim Main and no anim parts connected:
execute unless entity @e[tag=anim_part_menu] if entity @e[tag=anim_main_select,tag=!anim_main_new] run tellraw @s ["",{"text":"[Delete]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Deletes anim main and it's anim parts","color":"red"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select,tag=!anim_main_new] run function anim_edit:gui/main/run/menu4/delete_confirm"}}," ",{"text":"[Duplicate]","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"Duplicate anim main, its anim parts and animations to a new anim main","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select,tag=!anim_main_new] run function anim_edit:gui/main/run/menu4/duplicate"}}," ",{"text":"[Save]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Saves data and goes back to animations menu","color":"gray"},{"text":"\nRequires at least 1 connected anim_part","color":"red"}]}}]
# If not new Anim Main and there are anim parts connected:
execute if entity @e[tag=anim_part_menu] if entity @e[tag=anim_main_select,tag=!anim_main_new] run tellraw @s ["",{"text":"[Delete]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Deletes anim main and it's anim parts","color":"red"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select,tag=!anim_main_new] run function anim_edit:gui/main/run/menu4/delete_confirm"}}," ",{"text":"[Duplicate]","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"Duplicate anim main, its anim parts and animations to a new anim main","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_main_select,tag=!anim_main_new] run function anim_edit:gui/main/run/menu4/duplicate"}}," ",{"text":"[Save]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Saves data and goes back to animations menu","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_menu] if entity @e[tag=anim_main_select,tag=!anim_main_new] run function anim_edit:gui/main/run/menu4/save"}}]
