scoreboard players reset $_got_p_id _anim
scoreboard players reset $_got_anim _anim
scoreboard players reset $_got_part _anim
scoreboard players reset $_got_tick _anim
execute store result score $_got_anim _anim run data get storage anim:editor check_tick_sel[0].animation_id
execute store result score $_got_tick _anim run data get storage anim:editor check_tick_sel[0].tick
execute store result score $_got_part _anim run data get storage anim:editor check_tick_sel[0].part
execute if score $_get_tick _anim = $_got_tick _anim if score $_get_part _anim = $_got_part _anim store result score $_got_p_id _anim run data get storage anim:editor check_tick_sel[0].id
data remove storage anim:editor check_tick_sel[0]
execute if data storage anim:editor check_tick_sel[0] unless score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/check_if_sel_tick_loop