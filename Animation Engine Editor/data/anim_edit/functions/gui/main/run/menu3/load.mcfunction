function anim_edit:search_model
#>Deselect selected anim model (if selected)
data modify entity @e[tag=anim_model_select,limit=1] Marker set value 1b
data modify entity @e[tag=anim_model_select,limit=1] Glowing set value 0b
tag @e[tag=anim_model_select] remove anim_model_select
# tag @e[tag=anim_part_menu] remove anim_part_menu
#>Set page to 0 if it's un set
execute unless score @s _anim_page matches -2147483648..2147483647 run scoreboard players set @s _anim_page 1
#>Title
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMenu","underlined":true}," ",{"nbt":"ver","storage":"anim:editor","color":"green"}," ",{"text":"[Close]","color":"red","clickEvent": {"action": "run_command","value":"/function anim_edit:gui/main/run/menu3/close"}},"\n"]
tellraw @s {"text":"Select anim model:","color":"gray"}
#>Render Anim Models
function anim_edit:gui/main/run/menu3/get/start
#>Current Page
execute if score @s _anim_page matches ..1 run tellraw @s [{"text":"Page:","color":"yellow"},{"text":" <","color":"gray"}," ",{"score":{"name":"@s","objective": "_anim_page"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}}]
execute if score @s _anim_page matches 2.. run tellraw @s [{"text":"Page:","color":"yellow"},{"text":" <","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_down"}}," ",{"score":{"name":"@s","objective": "_anim_page"},"color":"white"}," ",{"text":"> ","clickEvent":{"action": "run_command","value":"/function anim_edit:gui/main/run/page_up"}}]

#>Remove selected model tag
function anim_edit:deselect_anim
#>Gamerule
function anim_edit:gamerule