# tree displays that lost their controller (1.3.0 left a dropped tree behind): every display stands on its controller, or 1 block up while hanging
tag @e[type=block_display,tag=timber.d] add timber.orphan
execute as @e[type=marker,tag=timber.ctl] at @s run tag @e[type=block_display,tag=timber.orphan,distance=..1.01] remove timber.orphan
kill @e[type=block_display,tag=timber.orphan]
