#bossbar
bossbar add _anim_prgbar_fast {"text":"Loading...","color":"gray"}
bossbar set _anim_prgbar_fast color white
bossbar set _anim_prgbar_fast players @p[tag=anim_user]

#get target tick
scoreboard players operation $_key_col _anim = @e[tag=anim_editor_sel,limit=1] _anim_editor_col
execute store result bossbar _anim_prgbar_fast max run scoreboard players operation $_key_col _anim += $page _anim

#setup
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_sel,limit=1] _anim_ida run data modify entity @s ArmorItems[2].tag.anim set from storage anim:editor result_comp
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_sel,limit=1] _anim_ida run function anim:setup_anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_sel,limit=1] _anim_ida run scoreboard players set @s _anim 0

function anim_edit:gui/editor/run/search/fast_forward_ticks/loop