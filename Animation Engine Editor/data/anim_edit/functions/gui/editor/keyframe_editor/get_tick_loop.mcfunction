scoreboard players reset $_got_part _anim
scoreboard players reset $_got_tick _anim
execute store result score $_got_tick _anim run data get storage anim:editor get_tick[0].tick
execute store result score $_got_part _anim run data get storage anim:editor get_tick[0].part
execute if score $_got_tick _anim = $_get_tick _anim if score $_got_part _anim = $_get_part _anim run data modify storage anim:editor got_tick set from storage anim:editor get_tick[0]
data remove storage anim:editor get_tick[0]
execute unless data storage anim:editor got_tick if data storage anim:editor get_tick[0] run function anim_edit:gui/editor/keyframe_editor/get_tick_loop