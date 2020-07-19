#>Gets previous and next values for available IDa
scoreboard players reset $next_idb _anim
scoreboard players operation $lookfor_idb _anim = @e[tag=anim_part_select,limit=1] _anim_idb
function anim_edit:gui/main/run/idb/loop_forward
scoreboard players reset $prev_idb _anim
scoreboard players operation $lookfor_idb _anim = @e[tag=anim_part_select,limit=1] _anim_idb
function anim_edit:gui/main/run/idb/loop_back