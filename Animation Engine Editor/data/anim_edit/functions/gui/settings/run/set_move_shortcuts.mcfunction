execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.m.remove2 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.m.remove2
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.m.remove1 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.m.remove1
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.m.add1 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.m.add1
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.m.add2 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.m.add2
execute as @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] if data entity @s ArmorItems[2].tag.m.add3 store result score $_dec_val _anim run data get entity @s ArmorItems[2].tag.m.add3

execute if score $_dec_val _anim matches ..0 run scoreboard players operation $_dec_val _anim *= $-1 _anim

function anim_edit:gui/settings/run/set_move_shortcuts_loop
scoreboard players reset $_dec_val _anim
data modify storage anim:editor move_shortcuts set from storage anim:editor output_move_shortcuts
data remove storage anim:editor output_move_shortcuts
data remove entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.m
function anim_edit:gui/settings/load