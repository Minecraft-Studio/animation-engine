#Save the keyframe
execute as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim:gui/editor/run/save_keyframe
#Backup, if enabled
execute if score $sett_bckp _anim matches 1 run function anim:gui/editor/run/backup
#First step, Sorting: Removes Empty keyframes and sorts all keyframes in the array from tick 0 to max tick in the keyframe
# setup
bossbar add _anim_prgbar [{"text":"Sorting...","color":"green"}]
bossbar set _anim_prgbar color green
bossbar set _anim_prgbar value 0
bossbar set _anim_prgbar players @p[tag=anim_user]
data modify storage anim:editor search set from storage anim:editor keyframes
scoreboard players operation $comp_page _anim = $_page _anim
scoreboard players set $comp_max_t _anim 0
data remove storage anim:editor result
scoreboard players set $comp_keyf _anim 0
# loop, output: $comp_max_t, $comp_keyf
function anim:gui/editor/run/search/compile/get_max_tick_loop
# apply result to keyframes
data modify storage anim:editor keyframes set from storage anim:editor result
# reset
scoreboard players reset $_emp_head _anim
scoreboard players reset $_emp_body _anim
scoreboard players reset $_emp_r_arm _anim
scoreboard players reset $_emp_l_arm _anim
scoreboard players reset $_emp_r_leg _anim
scoreboard players reset $_emp_l_leg _anim
scoreboard players reset $_emp_pos _anim
#scoreboard players reset $_emp_extra _anim
scoreboard players reset $_keyframe_empty _anim
scoreboard players reset $_comp_m_t _anim
data remove storage anim:editor result

#Second step, compile:

#reset everything
#scoreboard players reset $comp_keyf _anim
#scoreboard players reset $comp_max_t _anim
bossbar remove _anim_prgbar