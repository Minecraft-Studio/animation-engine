data remove storage anim:editor current_keyframe.extra.body
execute if data storage anim:editor sel_anim_data.body as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data modify entity @s ArmorItems[2] set from storage anim:editor sel_anim_data.body
execute unless data storage anim:editor sel_anim_data.body as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data remove entity @s ArmorItems[2]
function anim_edit:gui/editor/run/text/tab/rotate