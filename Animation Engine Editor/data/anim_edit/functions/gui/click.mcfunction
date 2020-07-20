execute if score $show_menu _anim matches 7 run function anim_edit:gui/editor/click
data merge entity @e[type=slime,tag=anim_selector,limit=1] {Health:50.0f,HurtTime:1s}