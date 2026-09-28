tag @s remove timber.put
data modify storage timber:op pq set from entity @s data.put
data remove entity @s data.put
function timber:put/clear_next
