#Checks if Animation Engine Runtime is enabled, if not message all users
execute store success score $_runtime_exists _anim run function anim:checker
execute unless score $_runtime_exists _anim matches 1 run tellraw @a ["",{"text":"Animation Engine Runtime is not installed! Cannot use the editor without it!","color":"red"}]