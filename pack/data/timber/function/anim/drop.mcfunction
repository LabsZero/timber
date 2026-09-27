scoreboard players operation #q timber.data = @s timber.t
scoreboard players operation #q timber.data *= @s timber.t
scoreboard players operation #q timber.data *= @s timber.dr
scoreboard players operation #q timber.data *= #1000 timber.data
scoreboard players operation #a timber.data = @s timber.dur
scoreboard players operation #a timber.data *= @s timber.dur
scoreboard players operation #q timber.data /= #a timber.data
scoreboard players operation #a timber.data = @s timber.y0
scoreboard players operation #a timber.data -= #q timber.data
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #a timber.data
tp @e[type=block_display,tag=timber.d,distance=..0.01] @s
execute if score @s timber.t >= @s timber.dur run function timber:anim/settle
