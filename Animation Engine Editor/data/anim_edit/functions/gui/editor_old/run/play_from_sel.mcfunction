#>Plays the animation from the editor
scoreboard players set $editor_play _anim 1
scoreboard players set $_api_endcomp _anim 4
scoreboard players operation $__sel_col _anim = $_sel_col _anim
scoreboard players operation $__sel_row _anim = $_sel_row _anim
function anim_edit:gui/editor/run/search/compile/start
scoreboard players operation $_sel_col _anim = $__sel_col _anim
scoreboard players operation $_sel_row _anim = $__sel_row _anim
scoreboard players reset $__sel_col _anim
scoreboard players reset $__sel_row _anim