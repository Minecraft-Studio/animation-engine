execute as @p[tag=anim_user] at @s run tp @e[type=slime,tag=anim_selector] ~ -1 ~
scoreboard players set $show_menu _anim 0
kill @e[type=armor_stand,tag=anim_menu]
kill @e[type=slime,tag=anim_selector]
tag @a[tag=anim_user] remove anim_user