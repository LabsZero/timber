execute unless data storage timber:meta version run return 0
scoreboard players enable @a timber
execute as @a[scores={timber=1..}] run function timber:player/toggle
execute as @a[tag=!timber.welcomed] run function timber:player/welcome
function timber:tick/mined
function timber:compat/extra_tick
execute store result score #gt timber.data run time query gametime
scoreboard players operation #gt timber.data %= #100 timber.data
execute if score #gt timber.data matches 0 run function timber:tick/sweep
