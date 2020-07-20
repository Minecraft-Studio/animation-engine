# save keyframes so the current keyframe selected is not lost
scoreboard players set $_no_deselect _anim 1
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe

scoreboard players set $_refresh_api _anim 1
execute if score $anim_page _anim matches 2.. run scoreboard players remove $anim_page _anim 1
function anim_edit:gui/editor/run/refresh_keyframes