execute unless data storage anim:editor current_keyframe.extra.small store result storage anim:editor current_keyframe.extra.small int 1 as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data get entity @s Small
execute if data storage anim:editor {current_keyframe:{extra:{small:0}}} run data modify storage anim:editor current_keyframe.extra.small set value 2
execute if data storage anim:editor {current_keyframe:{extra:{small:1}}} run data modify storage anim:editor current_keyframe.extra.small set value 0
execute if data storage anim:editor {current_keyframe:{extra:{small:2}}} run data modify storage anim:editor current_keyframe.extra.small set value 1
function anim_edit:gui/editor/run/text/tab/rotate