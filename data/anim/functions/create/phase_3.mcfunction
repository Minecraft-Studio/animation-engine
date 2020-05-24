data modify entity @e[tag=new_anim,tag=anim,tag=anim_body,limit=1] ArmorItems[3] set from entity @s SelectedItem

tellraw @s ["",{"text":"What item should be used for the ","color":"aqua"},{"text":"Upper Right Arm","color":"green"},{"text":"?\n\n ","color":"aqua"},{"text":"[Select holding item]","color":"green","clickEvent":{"action":"run_command","value":"/function anim:create/phase_4"}}]