execute unless data entity @s SelectedItem run data modify storage anim:editor tmp_anim_bckp set value {id:"minecraft:stone",Count:1b}
execute if data entity @s SelectedItem run data modify storage anim:editor tmp_anim_bckp set from entity @s SelectedItem
data modify storage anim:editor tmp_anim_bckp.tag.anim set from entity @e[tag=anim_part_select,limit=1] ArmorItems[2].tag.anim
data modify entity @e[tag=anim_part_select,limit=1] ArmorItems[2] set from storage anim:editor tmp_anim_bckp
data remove storage anim:editor tmp_anim_bckp
function anim_edit:gui/main/load