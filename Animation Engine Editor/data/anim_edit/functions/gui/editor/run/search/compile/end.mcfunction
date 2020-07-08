#reset everything
scoreboard players reset $comp_keyf _anim
scoreboard players reset $comp_max_t _anim
scoreboard players reset $_comp_kdone _anim
scoreboard players reset $_comp_kleft _anim
scoreboard players reset $_get_tick _anim
scoreboard players reset $_get_part _anim
scoreboard players reset $_comp_time_left _anim
scoreboard players reset $_comp_value_ease_add _anim
scoreboard players reset $_comp_value_tick _anim
scoreboard players reset $_comp_value_tick2 _anim
scoreboard players reset $_comp_value_tick3 _anim
scoreboard players reset $_comp_value_add _anim
scoreboard players reset $_comp_value_ease_add2 _anim
bossbar remove _anim_prgbar
scoreboard players reset $1000 _anim
tellraw @a {"text":"Compiling keyframes finished!","color":"gold"}