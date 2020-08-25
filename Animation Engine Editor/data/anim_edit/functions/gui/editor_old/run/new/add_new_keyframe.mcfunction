execute if entity @s[tag=anim_editor_r1] run data modify storage anim:editor keyframes_1 insert 0 value {new:1b}
execute if entity @s[tag=anim_editor_r2] run data modify storage anim:editor keyframes_2 insert 0 value {new:1b}
execute if entity @s[tag=anim_editor_r3] run data modify storage anim:editor keyframes_3 insert 0 value {new:1b}
execute if entity @s[tag=anim_editor_r4] run data modify storage anim:editor keyframes_4 insert 0 value {new:1b}
execute if entity @s[tag=anim_editor_r5] run data modify storage anim:editor keyframes_5 insert 0 value {new:1b}
execute if entity @s[tag=anim_editor_r6] run data modify storage anim:editor keyframes_6 insert 0 value {new:1b}
execute if entity @s[tag=anim_editor_r7] run data modify storage anim:editor keyframes_7 insert 0 value {new:1b}
tellraw @s {"text":"If you see this message, please report it as a bug! Function \"add_new_keyframe\" is not supposed to be running.","color":"red"}