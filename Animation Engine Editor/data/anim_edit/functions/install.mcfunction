execute if data storage anim:editor ver run data merge storage anim:editor {ver_update:1b}
data merge storage anim:editor {ver:"v1.0b1"}
scoreboard objectives add _anim dummy
scoreboard objectives add _anim_ida dummy
scoreboard objectives add _anim_idb dummy
# execute unless score $sett_link _anim matches 0.. run scoreboard players set $sett_link _anim 5
# execute unless score $sett_look _anim matches 0.. run scoreboard players set $sett_look _anim 1
# execute unless score $sett_def_rotate _anim matches 0.. run scoreboard players set $sett_def_rotate _anim 1
# execute unless score $sett_def_move _anim matches 0.. run scoreboard players set $sett_def_move _anim 1
# execute unless score $sett_compile _anim matches 0.. run scoreboard players set $sett_compile _anim 10
# execute unless score $sett_bckp _anim matches 0.. run scoreboard players set $sett_bckp _anim 1
# execute unless score $sett_gamerule _anim matches 0.. run scoreboard players set $sett_gamerule _anim 1
execute unless data storage anim:editor console run data modify storage anim:editor console set value []
#>only used by editor (for Multiplayer support), remove on uninstall
#FIX unistaller
scoreboard objectives add _anim_menu dummy
scoreboard objectives add _anim_page dummy
scoreboard objectives add _anim_row_page dummy
scoreboard objectives add _anim_menu dummy
scoreboard objectives add _anim_tab dummy
scoreboard objectives add _anim_id_player dummy
scoreboard objectives add _anim_ida_select dummy
scoreboard objectives add _anim_idb_select dummy
scoreboard objectives add _anim_editor_col dummy
scoreboard objectives add _anim_anim_id dummy
#> Settings..
#define objective _anim_sett_gmrle Gamerule
scoreboard objectives add _anim_sett_gmrle dummy
scoreboard objectives add _anim_sett_graph dummy
scoreboard objectives add _anim_graph_key dummy
execute unless data storage anim:editor edit_shortcuts run data modify storage anim:editor edit_shortcuts set value []
execute unless data storage anim:editor move_shortcuts run data modify storage anim:editor move_shortcuts set value []
execute unless data storage anim:editor clipboards run data modify storage anim:editor clipboards set value []
#>End of objectives only used by editor
scoreboard players set $-1 _anim -1
scoreboard players set $2 _anim 2
scoreboard players set $5 _anim 5
scoreboard players set $7 _anim 7
scoreboard players set $10 _anim 10
scoreboard players set $20 _anim 20
scoreboard players set $100 _anim 100
scoreboard players set $1000 _anim 1000
execute unless data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been installed! ","color":"green"},{"text":"(","color":"gray"},{"nbt":"ver","storage":"anim:editor","color":"gray"},{"text":")","color":"gray"},{"text":"\nRemember! Animation Engine is still in beta, bugs will happen, please report them (in Settings)!","color":"gray"}]
execute if data storage anim:editor ver_update run tellraw @a ["",{"text":"Animation Engine Editor has been updated to ","color":"green"},{"nbt":"ver","storage":"anim:editor","color":"aqua"},{"text":"\nRemember! Animation Engine is still in beta, bugs may happen, please report them (in Settings)!","color":"gray"}]
data remove storage anim:editor ver_update
#define entity @e[tag=anim_main_select]
#define entity @e[tag=anim_part_select]
#define storage anim:editor
#define storage anim:runtime
#define function anim_edit:gamerule
#define function anim_edit:search_model get anim_main_select
#define function anim_edit:search_part get anim_main_select/anim_part_select
data modify storage anim:editor settings_btn set value '{"text":"[Settings]","color":"gray","clickEvent":{"action":"run_command","value":"/function anim_edit:gui/settings/load"}}'