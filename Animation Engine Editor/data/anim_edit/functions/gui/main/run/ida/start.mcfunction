#>Gets previous and next values for available IDa
scoreboard players reset $next_ida _anim
scoreboard players operation $lookfor_ida _anim = @e[tag=anim_model_select,limit=1] _anim_ida
function anim_edit:gui/main/run/ida/loop_forward
scoreboard players reset $prev_ida _anim
scoreboard players operation $lookfor_ida _anim = @e[tag=anim_model_select,limit=1] _anim_ida
function anim_edit:gui/main/run/ida/loop_back