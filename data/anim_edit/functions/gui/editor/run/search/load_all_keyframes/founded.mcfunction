#runs to import data into editor
# get the column number
scoreboard players set $_load_col _anim 19
scoreboard players operation $_load_col_temp _anim = $_page_max _anim
scoreboard players operation $_load_col_temp _anim -= $_search_t _anim
scoreboard players operation $_load_col _anim -= $_load_col_temp _anim
scoreboard players reset $_load_col_temp
# import into the keyframe
execute as @e[type=armor_stand,tag=anim_editor] if score $_search_p _anim = @s _anim_editor_row if score $_load_col _anim = @s _anim_editor_col run function anim_edit:gui/editor/run/search/load_all_keyframes/founded2