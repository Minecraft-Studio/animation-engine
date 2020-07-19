#>Selects the animation
scoreboard players operation $selected_animation _anim = $main_page _anim
scoreboard players remove $selected_animation _anim 1
scoreboard players operation $selected_animation _anim *= $7 _anim
scoreboard players add $selected_animation _anim 7
function anim_edit:gui/main/load