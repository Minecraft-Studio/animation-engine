#runs when loading keyframes (triggered by changing page, loading the editor)
execute store result score $_search_t _anim run data get storage anim:editor search[0].tick
execute store result score $_search_p _anim run data get storage anim:editor search[0].part
# load into the editor
execute if score $_search_t _anim >= $_page _anim if score $_search_t _anim <= $_page_max _anim run function anim:gui/editor/run/search/load_all_keyframes/founded
# rest data
data remove storage anim:editor search[0]
scoreboard players reset $_tick_save _anim
execute unless data storage anim:editor search[] as @e[type=armor_stand,tag=anim_editor] if score @s _anim_editor_row = $_sel_row _anim if score @s _anim_editor_col = $_sel_col _anim run tag @s add anim_editor_sel
execute unless data storage anim:editor search[] as @e[type=armor_stand,tag=anim_editor] run function anim:gui/editor/select
execute unless data storage anim:editor search[] as @e[type=armor_stand,tag=anim_editor] run function anim:gui/editor/reset
execute if data storage anim:editor search[] run function anim:gui/editor/run/search/load_all_keyframes/loop