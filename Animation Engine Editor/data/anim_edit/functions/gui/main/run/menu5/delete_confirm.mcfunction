#>Confirmation for deleting Animation
scoreboard players operation $_id_search _anim = $selected_animation _anim
data modify storage anim:editor tmp_anim_model_data set from entity @e[tag=anim_main_select,limit=1] ArmorItems[2].tag.animations
function anim_edit:gui/main/run/menu5/get_anim/start
tellraw @p[tag=anim_user] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nAnim Part","underlined":true},{"text":" "},{"nbt":"ver","storage":"anim:editor","color":"aqua"},"\n"]
tellraw @p[tag=anim_user] [{"text":"Are you sure you want to ","color":"white"},{"text":"delete","color":"red","underlined":true}," ",{"nbt":"anim_data.name","storage":"anim:editor","color":"green"},"?\n\n ",{"text":"[Yes]","color":"green","hoverEvent":{"action": "show_text","contents":[{"text":"Deleting animation is not undoable!","color":"red"}]},"clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu5/delete"}}," ",{"text":"[No]","color":"red","hoverEvent":{"action": "show_text","contents":[{"text":"Cancels and returns to the menu","color":"gray"}]},"clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/load"}},"\n\n\n"]
function anim_edit:gamerule