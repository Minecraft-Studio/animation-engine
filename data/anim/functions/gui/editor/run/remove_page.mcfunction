scoreboard players operation $_tmp_old_pg _anim = $_page _anim
execute if score $_page _anim matches 2.. run scoreboard players remove $_page _anim 1
function anim:gui/editor/run/refresh_keyframes