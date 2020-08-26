function anim_edit:search_part_editor
execute unless data storage anim:editor current_keyframe.extra.invisible store result storage anim:editor current_keyframe.extra.invisible_prev int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s Invisible
execute unless data storage anim:editor current_keyframe.extra.invisible store result storage anim:editor current_keyframe.extra.invisible int 1 as @e[type=armor_stand,tag=anim_part_select] run data get entity @s Invisible
execute if data storage anim:editor {current_keyframe:{extra:{invisible:0}}} run data modify storage anim:editor current_keyframe.extra.invisible set value 2
execute if data storage anim:editor {current_keyframe:{extra:{invisible:1}}} run data modify storage anim:editor current_keyframe.extra.invisible set value 0
execute if data storage anim:editor {current_keyframe:{extra:{invisible:2}}} run data modify storage anim:editor current_keyframe.extra.invisible set value 1
function anim_edit:gui/editor/load
execute as @e[type=armor_stand,tag=anim_part_select] store result entity @s Invisible byte 1 run data get storage anim:editor current_keyframe.extra.invisible