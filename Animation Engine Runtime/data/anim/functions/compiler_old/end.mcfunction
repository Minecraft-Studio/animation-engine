tag @s add anim_model_search
# tellraw @p {"nbt":"compile","storage":"anim:runtime"}
execute as @e[tag=anim_model] if score @s _anim_ida = @e[tag=anim_model_search,limit=1] _anim_ida run function anim_edit:add_compile_model
execute as @e[tag=anim_model] if score @s _anim_ida = @e[tag=anim_model_search,limit=1] _anim_ida run scoreboard players reset @s _anim_anim_id
tag @s remove anim_model_search
tag @s remove anim_compile_end_api
say compile end