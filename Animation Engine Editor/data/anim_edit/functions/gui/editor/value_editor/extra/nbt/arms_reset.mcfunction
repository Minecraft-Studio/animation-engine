data remove storage anim:editor current_keyframe.extra.arms
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim_idb = $_sel_row _anim store result entity @s ShowArms byte 1 run data get storage anim:editor current_keyframe.extra.arms_prev
data remove storage anim:editor current_keyframe.extra.arms_prev
function anim_edit:gui/editor/load