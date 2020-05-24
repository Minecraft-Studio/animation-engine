scoreboard players remove $_page _anim 5
execute if score $_page _anim matches ..0 run scoreboard players set $_page _anim 1
function anim:gui/editor/run/refresh_keyframes