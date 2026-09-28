# the chop tick took the tree's blocks out of the world (the fall scan and the leaf walk need them gone), but a new
# display is drawn only after its first client tick, so the tree would vanish for up to a tick: every block that got a
# display goes back for that tick (strict, so the client sees no change) and put/clear removes it the next tick
tag @s remove timber.putnew
data modify storage timber:op pq set from entity @s data.put
function timber:put/next
