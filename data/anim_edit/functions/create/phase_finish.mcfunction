data modify entity @e[tag=anim,tag=new_anim,tag=anim_head,limit=1] ArmorItems[2] set value {id:"minecraft:stone",Count:1b,tag:{animations:[]}}
tag @e[tag=anim,tag=sel_anim] remove sel_anim
tag @e[tag=anim,tag=new_anim] add sel_anim
tag @e[tag=anim,tag=new_anim] remove new_anim
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nYou have successfully created a new animation model!\nYou have automatically selected it.\n","color":"green"}]
function anim_edit:menu/selection/main