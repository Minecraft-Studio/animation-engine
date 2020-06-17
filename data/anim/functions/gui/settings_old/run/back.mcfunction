execute if score $_back_menu _anim matches 1 run function anim:gui/main/load
execute if score $_back_menu _anim matches 3 run function anim:gui/new/reload
execute if score $_back_menu _anim matches 5 run function anim:gui/anim_picker/load
scoreboard players reset $_back_menu _anim
