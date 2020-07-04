#north / south / east / west
execute if score $sett_link _anim matches 1 at @p[tag=anim_user] run tp @s ~ ~1 ~-3
execute if score $sett_link _anim matches 2 at @p[tag=anim_user] run tp @s ~3 ~1 ~
execute if score $sett_link _anim matches 3 at @p[tag=anim_user] run tp @s ~ ~1 ~3
execute if score $sett_link _anim matches 4 at @p[tag=anim_user] run tp @s ~-3 ~1 ~
execute if score $sett_link _anim matches 5 unless entity @p[tag=anim_user,distance=..3.5] facing entity @p[tag=anim_user] eyes run tp @s ^ ^ ^0.5