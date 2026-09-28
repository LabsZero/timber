data modify storage timber:op recs append value {p:{},w:"false",g:"air"}
execute store result storage timber:op recs[-1].x int 1 run scoreboard players get #cx timber.data
execute store result storage timber:op recs[-1].y int 1 run scoreboard players get #cy timber.data
execute store result storage timber:op recs[-1].z int 1 run scoreboard players get #cz timber.data
