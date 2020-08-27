#
#>Summons armor stand with tag 'anim_free_block' for signs placments
kill @e[tag=anim_free_block]
summon armor_stand ~ ~ ~ {Tags:["anim_free_block"],Marker:1b,Invisible:1b}
spreadplayers ~ ~ 16 1 under 254 false @e[tag=anim_free_block]