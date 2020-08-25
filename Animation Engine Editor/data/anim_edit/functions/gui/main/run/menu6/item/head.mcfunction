execute if data entity @s SelectedItem run data modify entity @e[tag=anim_part_select,limit=1] ArmorItems[3] set from entity @s SelectedItem
execute unless data entity @s SelectedItem run data remove entity @e[tag=anim_part_select,limit=1] ArmorItems[3].id
function anim_edit:gui/main/load