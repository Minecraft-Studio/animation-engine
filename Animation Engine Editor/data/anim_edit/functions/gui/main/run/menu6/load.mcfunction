function anim_edit:search_part
#>Summons new Anim Part if it doesn't exists
execute unless entity @e[tag=anim_part_select] run function anim_edit:gui/main/run/new_part
#>Disables Anim Model glow effect
data modify entity @e[tag=anim_model_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_model_select,limit=1] Glowing set value 0b
#>Makes selected Anim Part glow
data modify entity @e[tag=anim_part_select,limit=1] Marker set value 0b
data modify entity @e[tag=anim_part_select,limit=1] Glowing set value 1b

#>Loads Anim Editor Menu
function anim_edit:gui/main/run/idb/start
execute unless score @s _anim_page matches -2147483648..2147483647 run scoreboard players set @s _anim_page 1
scoreboard players set @s _anim_menu 6
#>Title
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnim Part","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
#>Name
execute unless score $_curr_air _anim matches 1 run tellraw @s [{"text":"Anim part name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Click to set a new name","color":"gray"}},"clickEvent": {"action":"suggest_command","value":"/data modify storage anim:editor anim_part_cname set value "}},{"nbt":"CustomName","entity":"@e[tag=anim_part_select,limit=1]","interpret":true,"color":"green"}]
execute if score $_curr_air _anim matches 1 run tellraw @s [{"text":"Anim part name: ","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"Stay in air block!","color":"red"}}},{"text":"Err","color":"red"}]
#>ID
execute unless score $prev_idb _anim matches 1.. run tellraw @s ["",{"text":"Anim part ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this part","color":"gray"}}},{"text":" <","color":"gray"}," ",{"score":{"name":"@e[tag=anim_part_select,limit=1]","objective":"_anim_idb"},"color":"white"},{"text":" >","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Next: ","color":"gray"},{"score":{"name": "$next_idb","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/idb/next"}}]
execute if score $prev_idb _anim matches 1.. run tellraw @s ["",{"text":"Anim part ID:","color":"gray","hoverEvent":{"action": "show_text","contents":{"text":"The assigned ID for this part","color":"gray"}}},{"text":" <","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Previous: ","color":"gray"},{"score":{"name": "$prev_idb","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/idb/prev"}}," ",{"score":{"name":"@e[tag=anim_part_select,limit=1]","objective":"_anim_idb"},"color":"white"},{"text":" >","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Next: ","color":"gray"},{"score":{"name": "$next_idb","objective": "_anim"}}]},"clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/idb/next"}}]
#>Line space
tellraw @s ""
#>Inventory
execute if data entity @e[tag=anim_part_select,limit=1] ArmorItems[3].id run tellraw @s [{"text":"[Head: ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/head"}},{"nbt":"ArmorItems[3].id","entity":"@e[tag=anim_part_select,limit=1]","color":"#ffa2a2"},"]"]
execute unless data entity @e[tag=anim_part_select,limit=1] ArmorItems[3].id run tellraw @s [{"text":"[Head: ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/head"}},{"text":"none","color":"gray"},"]"]

execute if data entity @e[tag=anim_part_select,limit=1] ArmorItems[2].id run tellraw @s [{"text":"[Body: ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/body"}},{"nbt":"ArmorItems[2].id","entity":"@e[tag=anim_part_select,limit=1]","color":"#a2a2ff"},"]"]
execute unless data entity @e[tag=anim_part_select,limit=1] ArmorItems[2].id run tellraw @s [{"text":"[Body: ","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/body"}},{"text":"none","color":"gray"},"]"]

execute if data entity @e[tag=anim_part_select,limit=1] HandItems[0].id run tellraw @s [{"text":"[Right Arm: ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/r_arm"}},{"nbt":"HandItems[0].id","entity":"@e[tag=anim_part_select,limit=1]","color":"#d073d0"},"]"]
execute unless data entity @e[tag=anim_part_select,limit=1] HandItems[0].id run tellraw @s [{"text":"[Right Arm: ","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/r_arm"}},{"text":"none","color":"gray"},"]"]

execute if data entity @e[tag=anim_part_select,limit=1] HandItems[1].id run tellraw @s [{"text":"[Left Arm: ","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/l_arm"}},{"nbt":"HandItems[1].id","entity":"@e[tag=anim_part_select,limit=1]","color":"#ffa2ff"},"]"]
execute unless data entity @e[tag=anim_part_select,limit=1] HandItems[1].id run tellraw @s [{"text":"[Left Arm: ","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/l_arm"}},{"text":"none","color":"gray"},"]"]

execute if data entity @e[tag=anim_part_select,limit=1] ArmorItems[1].id run tellraw @s [{"text":"[Leggings: ","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/legg"}},{"nbt":"ArmorItems[1].id","entity":"@e[tag=anim_part_select,limit=1]","color":"#73d073"},"]"]
execute unless data entity @e[tag=anim_part_select,limit=1] ArmorItems[1].id run tellraw @s [{"text":"[Leggings: ","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/legg"}},{"text":"none","color":"gray"},"]"]

execute if data entity @e[tag=anim_part_select,limit=1] ArmorItems[0].id run tellraw @s [{"text":"[Boots: ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/boots"}},{"nbt":"ArmorItems[0].id","entity":"@e[tag=anim_part_select,limit=1]","color":"#a2ffa2"},"]"]
execute unless data entity @e[tag=anim_part_select,limit=1] ArmorItems[0].id run tellraw @s [{"text":"[Boots: ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set it to the item you are holding","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function anim_edit:gui/main/run/menu6/item/boots"}},{"text":"none","color":"gray"},"]"]
#>Line space
tellraw @s ""
#>Menu Buttons
# If new Anim Part:
execute if entity @e[tag=anim_part_select,tag=anim_part_new] run tellraw @s ["",{"text":"[Cancel]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Cancels and deletes the anim part","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select,tag=anim_part_new] run function anim_edit:gui/main/run/menu6/delete"}}," ",{"text":"[Save]","color":"green","hoverEvent":{"action": "show_text","contents":{"text":"Saves data and goes back","color":"gray"}},"clickEvent":{"action":"run_command","value":"/execute if entity @e[tag=anim_part_select] run function anim_edit:gui/main/run/menu6/save"}}]

# If not new Anim Part:
execute if entity @e[tag=anim_part_select,tag=!anim_part_new] run tellraw @s ["",{"text":"[Delete]","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Deletes anim part","color":"red"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select,tag=!anim_part_new] run function anim_edit:gui/main/run/menu6/delete_confirm"}}," ",{"text":"[Duplicate]","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"Duplicate anim part to a new anim part","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select,tag=!anim_part_new] run function anim_edit:gui/main/run/menu6/duplicate"}}," ",{"text":"[Save]","color":"green","hoverEvent":{"action":"show_text","contents":{"text":"Saves data and goes back","color":"gray"}},"clickEvent": {"action": "run_command","value": "/execute if entity @e[tag=anim_part_select] run function anim_edit:gui/main/run/menu6/save"}}]

#>Gamerule
function anim_edit:gamerule