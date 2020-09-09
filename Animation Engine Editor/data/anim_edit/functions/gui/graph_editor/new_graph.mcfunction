data modify storage anim:editor graph_import set value {name:"",data:[]}
data modify storage anim:editor graph_import.name set from entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.new_graph
data modify storage anim:runtime graphs append from storage anim:editor graph_import
data remove entity @e[tag=anim_custom_nbt_tp,tag=anim_settings,limit=1] ArmorItems[2].tag.new_graph
execute store result score @s _anim_sett_graph run data get storage anim:runtime graphs
function anim_edit:gui/graph_editor/load
execute as @a[scores={_anim_sett_graph=1..}] unless score @s _anim_graph_key matches 1.. run function anim_edit:gui/settings/load
