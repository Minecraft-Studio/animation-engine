function anim_edit:get_free_block
scoreboard players operation $_get_anim _anim = @s _anim_anim_id
scoreboard players set $_get_tick _anim 0
scoreboard players operation $_get_tick _anim += @s _anim_page
#Get 1-20 column data
data modify storage anim:editor row_result set value []
scoreboard players set $_render_col _anim 1
function anim_edit:gui/editor/keyframe_editor/render_col
tellraw @s ["   ",{"nbt":"row_result[0]","storage":"anim:editor","interpret":true},{"nbt":"row_result[1]","storage":"anim:editor","interpret":true},{"nbt":"row_result[2]","storage":"anim:editor","interpret":true},{"nbt":"row_result[3]","storage":"anim:editor","interpret":true},{"nbt":"row_result[4]","storage":"anim:editor","interpret":true},{"nbt":"row_result[5]","storage":"anim:editor","interpret":true},{"nbt":"row_result[6]","storage":"anim:editor","interpret":true},{"nbt":"row_result[7]","storage":"anim:editor","interpret":true},{"nbt":"row_result[8]","storage":"anim:editor","interpret":true},{"nbt":"row_result[9]","storage":"anim:editor","interpret":true},{"nbt":"row_result[10]","storage":"anim:editor","interpret":true},{"nbt":"row_result[11]","storage":"anim:editor","interpret":true},{"nbt":"row_result[12]","storage":"anim:editor","interpret":true},{"nbt":"row_result[13]","storage":"anim:editor","interpret":true},{"nbt":"row_result[14]","storage":"anim:editor","interpret":true},{"nbt":"row_result[15]","storage":"anim:editor","interpret":true},{"nbt":"row_result[16]","storage":"anim:editor","interpret":true},{"nbt":"row_result[17]","storage":"anim:editor","interpret":true},{"nbt":"row_result[18]","storage":"anim:editor","interpret":true},{"nbt":"row_result[19]","storage":"anim:editor","interpret":true}," ",{"nbt":"after_render_tellraw[0]","storage":"anim:editor","interpret":true}," ",{"nbt":"after_render_tellraw[1]","storage":"anim:editor","interpret":true}," ",{"nbt":"after_render_tellraw[2]","storage":"anim:editor","interpret":true}]

data remove storage anim:editor row_result
data remove storage anim:editor after_render_tellraw
