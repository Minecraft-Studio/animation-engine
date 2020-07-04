#start the load, search loop
data modify storage anim:editor search set from storage anim:editor keyframes
scoreboard players operation $_page_max _anim = $_page _anim
scoreboard players set 19 _anim 19
scoreboard players operation $_page_max _anim += 19 _anim
scoreboard players reset 19 _anim
# remove tags
tag @e[type=armor_stand,tag=anim_editor] add anim_editor0
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor1
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor2
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor3
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor4
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor5
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor6
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor7
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor8
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor9
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor10
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor11
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor12
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor13
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor14
tag @e[type=armor_stand,tag=anim_editor] remove anim_editor_sel

function anim_edit:gui/editor/run/search/load_all_keyframes/loop

execute as @e[type=armor_stand,tag=anim_editor] if score @s _anim_editor_col = $_sel_col _anim if score @s _anim_editor_row = $_sel_row _anim run function anim_edit:gui/editor/run/search/load_keyframe/start
