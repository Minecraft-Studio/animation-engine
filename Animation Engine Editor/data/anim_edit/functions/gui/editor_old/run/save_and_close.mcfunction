#>Save
# scoreboard players set $_no_deselect _anim 1
# execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe
# Save all data into anim_main
scoreboard players set $_api_endcomp _anim 5
function anim_edit:gui/editor/run/search/compile/start
#Data moved to anim_edit:gui/editor/run/save_and_close2