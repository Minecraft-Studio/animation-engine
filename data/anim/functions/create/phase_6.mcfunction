data modify entity @e[tag=new_anim,tag=anim,tag=anim_upper_left_arm,limit=1] HandItems[1] set from entity @s SelectedItem

tellraw @s ["",{"text":"What item should be used for the ","color":"aqua"},{"text":"Lower Left Arm","color":"gold"},{"text":"?\n\n ","color":"aqua"},{"text":"[Select holding item]","color":"green","clickEvent":{"action":"run_command","value":"/function anim:create/phase_7"}}]