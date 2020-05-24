execute if score $show_menu _anim matches 1 run function anim:gui/main/click
execute if score $show_menu _anim matches 2 run function anim:gui/settings/click
execute if score $show_menu _anim matches 3 run function anim:gui/new/click
execute if score $show_menu _anim matches 4 run function anim:gui/add/click
execute if score $show_menu _anim matches 5 run function anim:gui/anim_picker/click
execute if score $show_menu _anim matches 6 run function anim:gui/editor/click
data merge entity @e[type=slime,tag=anim_selector,limit=1] {Health:50.0f}