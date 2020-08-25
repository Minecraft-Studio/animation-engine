#Save the keyframe
execute if score $_api_endcomp _anim matches 3..4 run scoreboard players set $_no_deselect _anim 2
execute unless score $_api_endcomp _anim matches 1..2 as @e[type=armor_stand,tag=anim_menu,tag=anim_editor,tag=anim_editor_sel,limit=1] run function anim_edit:gui/editor/run/save_keyframe
#Backup, if enabled
execute if score $sett_bckp _anim matches 1 run function anim_edit:gui/editor/run/backup
#First step, Sorting: Removes Empty keyframes and sorts all keyframes in the array from tick 0 to max tick in the keyframe
# setup
bossbar add _anim_prgbar {"text":"Sorting...","color":"green"}
bossbar set _anim_prgbar color green
bossbar set _anim_prgbar players @s
data modify storage anim:editor search set from storage anim:editor keyframes
scoreboard players operation $comp_page _anim = $page _anim
scoreboard players set $comp_max_t _anim 0
data remove storage anim:editor result
scoreboard players set $comp_keyf _anim 0
# loop, output: $comp_max_t, $comp_keyf
function anim_edit:gui/editor/run/search/compile/get_max_tick_loop
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
scoreboard players reset $_emp_extra _anim
scoreboard players reset $_emp_extra1 _anim
scoreboard players reset $_emp_extra2 _anim
scoreboard players reset $_emp_extra3 _anim
scoreboard players reset $_emp_extra4 _anim
scoreboard players reset $_emp_extra5 _anim
scoreboard players reset $_emp_extra6 _anim
scoreboard players reset $_emp_extra7 _anim
scoreboard players reset $_emp_extra8 _anim
scoreboard players reset $_emp_extra9 _anim
scoreboard players reset $_emp_extra0 _anim
#scoreboard players reset $_emp_extra _anim
scoreboard players reset $_keyframe_empty _anim
scoreboard players reset $_comp_m_t _anim
data remove storage anim:editor result

#Second step, compile (tick loop):
# setup
scoreboard players set $_comp_loop _anim 1
scoreboard players set $_get_tick _anim 0
scoreboard players set $_get_part _anim 1
data modify storage anim:editor search_comp set from storage anim:editor keyframes
data remove storage anim:editor result_comp
data remove storage anim:editor last_compile_keyframe
data remove storage anim:editor result_comp_tick_old
data remove storage anim:editor result_comp_tick
#  get maximum number of keyframes
execute store result bossbar minecraft:_anim_prgbar max store result score $_comp_kmax _anim run data get storage anim:editor keyframes
bossbar set _anim_prgbar color yellow
scoreboard players set $20 _anim 20
scoreboard players set $2 _anim 2
scoreboard players set $1000 _anim 1000

# loop
# input: search_comp[]
# output: result_comp[]
function anim_edit:gui/editor/run/search/compile/compile_loop

#rest of data goes to anim_edit:gui/editor/run/search/compile/end