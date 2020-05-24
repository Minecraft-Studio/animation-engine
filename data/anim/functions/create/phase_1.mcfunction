summon armor_stand ~ ~ ~ {Tags:["anim","new_anim","anim_head"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~ ~ ~ {Tags:["anim","new_anim","anim_body","anim_upper_right_arm","anim_upper_left_arm"],Pose:{RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~ ~ ~ {Tags:["anim","new_anim","anim_lower_right_arm"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~0.25 ~-0.75 ~ {Tags:["anim","new_anim","anim_upper_right_leg"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~0.25 ~-0.75 ~ {Tags:["anim","new_anim","anim_lower_right_leg"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~0.5 ~-0.75 ~ {Tags:["anim","new_anim","anim_upper_left_leg"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~0.5 ~-0.75 ~ {Tags:["anim","new_anim","anim_lower_left_leg"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}
summon armor_stand ~0.75 ~ ~ {Tags:["anim","new_anim","anim_lower_left_arm"],Pose:{RightArm:[0f,0f,0f]},NoGravity:1b,NoBasePlate:1b,Invisible:1b}

tellraw @s ["",{"text":"What item should be used for the ","color":"aqua"},{"text":"Head","color":"red"},{"text":"?\n\n ","color":"aqua"},{"text":"[Select holding item]","color":"green","clickEvent":{"action":"run_command","value":"/function anim:create/phase_2"}}]

#tellraw @a ["",{"text":".....................................","color":"black"},{"text":"[Head]","color":"red"}]
#tellraw @a ["",{"text":".....................................","color":"black"},{"text":"[Body]","color":"blue"}]
#tellraw @a ["",{"text":"[Upper Right Arm]","color":"green"},{"text":" "},{"text":"[Upper Left Arm]","color":"yellow"}]
#tellraw @a ["",{"text":"[Lower Right Arm]","color":"green"},{"text":" "},{"text":"[Lower Left Arm]","color":"yellow"}]
#tellraw @a ["",{"text":"[Upper Right Leg]","color":"dark_green"},{"text":" "},{"text":"[Upper Left Leg]","color":"gold"}]
#tellraw @a ["",{"text":"[Lower Right Leg]","color":"dark_green"},{"text":" "},{"text":"[Lower Left Leg]","color":"gold"}]

#Head               red
#Body               blue
#Upper Right Arm    green
#Lower Right Arm    dark_green
#Upper Left Arm     yellow
#Lower Left Arm     gold
#Upper Right Leg    aqua
#Lower Right Leg    dark_aqua
#Upper Left Leg     light_purple
#Lower Left Leg     dark_purple