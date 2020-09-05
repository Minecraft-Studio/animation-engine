function anim_edit:kill_nbt_as
execute as @a[scores={_anim_menu=3}] if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu3/load
execute as @a[scores={_anim_menu=4}] if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu4/load
execute as @a[scores={_anim_menu=5}] if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu5/load
execute as @a[scores={_anim_menu=6}] if score $runtime_exists _anim matches 1 run function anim_edit:gui/main/run/menu6/load
execute as @a[scores={_anim_menu=7}] if score $runtime_exists _anim matches 1 run function anim_edit:gui/editor/load
execute unless score $runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]