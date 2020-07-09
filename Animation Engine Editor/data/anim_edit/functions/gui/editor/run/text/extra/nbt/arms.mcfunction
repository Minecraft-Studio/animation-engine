execute unless data storage anim:editor current_keyframe.extra.arms store result storage anim:editor current_keyframe.extra.arms int 1 as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = $_sel_ida _anim if score @s _anim_idb = $_sel_part _anim run data get entity @s ShowArms
execute if data storage anim:editor {current_keyframe:{extra:{arms:0}}} run data modify storage anim:editor current_keyframe.extra.arms set value 2
execute if data storage anim:editor {current_keyframe:{extra:{arms:1}}} run data modify storage anim:editor current_keyframe.extra.arms set value 0
execute if data storage anim:editor {current_keyframe:{extra:{arms:2}}} run data modify storage anim:editor current_keyframe.extra.arms set value 1
function anim_edit:gui/editor/run/text/tab/rotate