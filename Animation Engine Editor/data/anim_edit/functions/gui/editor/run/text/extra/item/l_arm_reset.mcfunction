data remove storage anim:editor current_keyframe.extra.l_arm
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim if data storage anim:editor sel_anim_data.l_arm run data modify entity @s HandItems[1] set from storage anim:editor sel_anim_data.l_arm
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim unless data storage anim:editor sel_anim_data.l_arm run data remove entity @s HandItems[1]
function anim_edit:gui/editor/run/text/tab/rotate