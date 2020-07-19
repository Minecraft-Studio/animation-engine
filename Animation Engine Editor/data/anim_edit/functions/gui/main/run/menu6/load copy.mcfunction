#>Summons new Anim Part if it doesn't exists
execute unless entity @e[tag=anim_part_select] at @e[tag=anim_main_select] run function anim_edit:gui/main/run/new_part
#>Disables Anim Model glow effect
data modify entity @e[tag=anim_main_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_main_select,limit=1] Glowing set value 0b
#>Makes selected Anim Part glow
data modify entity @e[tag=anim_part_select,limit=1] Marker set value 0b
data modify entity @e[tag=anim_part_select,limit=1] Glowing set value 1b

#>Loads Anim Editor Menu
function anim_edit:gui/main/run/idb/start
execute unless score $main_page _anim matches -2147483648..2147483647 run scoreboard players set $main_page _anim 1
scoreboard players set $show_menu _anim 6
#>Title
tellraw @p[tag=anim_user] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnim Part","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
#>Name
execute unless score $_curr_air _anim matches 1 run tellraw @p[tag=anim_user] [{"text":"Anim part name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Click to set a new name","color":"gray"}},"clickEvent": {"action":"suggest_command","value":"/data modify storage anim:editor anim_part_cname set value "}},{"nbt":"CustomName","entity":"@e[tag=anim_part_select,limit=1]","interpret":true,"color":"green"}]
execute if score $_curr_air _anim matches 1 run tellraw @p[tag=anim_user] [{"text":"Anim part name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Stay in air block!","color":"red"}}},{"text":"Err","color":"red"}]
#>ID
execute unless score $prev_idb _anim matches 1.. run tellraw @p[tag=anim_user] ["",{"text":"Anim part ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this model","color":"gray"}}},{"text":" <","color":"gray"}," ",{"score":{"name":"@e[tag=anim_part_select,limit=1]","objective":"_anim_idb"},"color":"white"},{"text":" >","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Next: ","color":"gray"},{"score":{"name": "$next_idb","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/id/next"}}]
execute if score $prev_idb _anim matches 1.. run tellraw @p[tag=anim_user] ["",{"text":"Anim part ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this model","color":"gray"}}},{"text":" <","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Previous: ","color":"gray"},{"score":{"name": "$prev_idb","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/id/prev"}}," ",{"score":{"name":"@e[tag=anim_part_select,limit=1]","objective":"_anim_idb"},"color":"white"},{"text":" >","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Next: ","color":"gray"},{"score":{"name": "$next_idb","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/id/next"}}]

#>Menu Buttons
# If new Anim Part:
execute if entity @e[tag=anim_part_select,tag=anim_part_new] run tellraw @p[tag=anim_user] ["",{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Cancels and deletes the anim part","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select,tag=anim_part_new] run function anim_edit:gui/main/run/menu6/cancel"}}," ",{"text":"[Save]","color":"green","hoverEvent":{"action": "show_text","contents":{"text":"Saves data and goes back","color":"gray"}},"clickEvent":{"action":"run_command","value":"/execute if entity @e[tag=anim_part_select] run function anim_edit:gui/main/run/menu6/save"}}]

# If not new Anim Part:
execute if entity @e[tag=anim_part_select,tag=!anim_part_new] run tellraw @p[tag=anim_user] ["",{"text":"[Delete]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Deletes anim part","color":"red"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select,tag=!anim_part_new] run function anim_edit:gui/main/run/menu6/delete_confirm"}}," ",{"text":"[Duplicate]","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"Duplicate anim part to a new anim part","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select,tag=!anim_part_new] run function anim_edit:gui/main/run/menu6/duplicate"}}," ",{"text":"[Save]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Saves data and goes back","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select] run function anim_edit:gui/main/run/menu6/save"}}]

#>Gamerule
function anim_edit:gamerule