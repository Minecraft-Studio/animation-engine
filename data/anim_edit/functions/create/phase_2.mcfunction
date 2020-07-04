data modify entity @e[tag=new_anim,tag=anim,tag=anim_head,limit=1] ArmorItems[3] set from entity @s SelectedItem

tellraw @s ["",{"text":"What item should be used for the ","color":"aqua"},{"text":"Body","color":"blue"},{"text":"?\n\n ","color":"aqua"},{"text":"[Select holding item]","color":"green","clickEvent":{"action":"run_command","value":"/function anim_edit:create/phase_3"}}]