data remove storage anim:editor current_keyframe.rotate
data remove storage anim:editor current_keyframe.position
data remove storage anim:editor current_keyframe.extra
data merge storage anim:editor {current_keyframe:{rotate:{},position:{},extra:{}}}
execute store result storage anim:editor current_keyframe.extra.rotate int 1 run scoreboard players get $sett_def_rotate _anim
execute store result storage anim:editor current_keyframe.extra.move int 1 run scoreboard players get $sett_def_move _anim
#load from frame

execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.head set from entity @s Pose.Head
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.body set from entity @s Pose.Body
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.r_arm set from entity @s Pose.RightArm
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.l_arm set from entity @s Pose.LeftArm
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.l_leg set from entity @s Pose.LeftLeg
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.r_leg set from entity @s Pose.RightLeg
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim.position set from entity @s Pos

scoreboard players reset $_api_endcomp _anim
#menu
function anim_edit:gui/editor/run/text/tab/rotate   