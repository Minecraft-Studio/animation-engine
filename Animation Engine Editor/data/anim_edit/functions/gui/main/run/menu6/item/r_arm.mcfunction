execute if data entity @p[tag=anim_user] SelectedItem run data modify entity @e[tag=anim_part_select,limit=1] HandItems[0] set from entity @p[tag=anim_user] SelectedItem
execute unless data entity @p[tag=anim_user] SelectedItem run data remove entity @e[tag=anim_part_select,limit=1] HandItems[0].id
function anim_edit:gui/main/load