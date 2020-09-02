execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.e.remove3 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.e.remove3 1000
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.e.remove2 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.e.remove2 1000
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.e.remove1 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.e.remove1 1000
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.e.add1 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.e.add1 1000
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.e.add2 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.e.add2 1000
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.e.add3 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.e.add3 1000

execute if score $_dec_val _anim matches ..0 run scoreboard players operation $_dec_val _anim *= $-1 _anim

scoreboard players operation $_dec_val_ _anim = $_dec_val _anim
function anim_edit:gui/editor/value_editor/get_decimals/start

function anim_edit:gui/settings/run/set_edit_shortcuts_loop
scoreboard players reset $_dec_val_ _anim
scoreboard players reset $_dec_val1 _anim
scoreboard players reset $_dec_val2 _anim
scoreboard players reset $_dec_val3 _anim
scoreboard players reset $_dec_val4 _anim
data modify storage anim:editor edit_shortcuts set from storage anim:editor output_edit_shortcuts
data remove storage anim:editor output_edit_shortcuts
data remove entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.e
function anim_edit:gui/settings/load