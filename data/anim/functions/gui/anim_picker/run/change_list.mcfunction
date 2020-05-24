execute if score $page _anim matches 1 run scoreboard players set $page _anim 0
execute if score $page _anim matches 2 run scoreboard players set $page _anim 1
execute if score $page _anim matches 0 run scoreboard players set $page _anim 2

execute if score $page _anim matches 1 run function anim:gui/anim_picker/run/change_list1
execute if score $page _anim matches 2 run function anim:gui/anim_picker/run/change_list2