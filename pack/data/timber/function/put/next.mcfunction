execute unless data storage timber:op pq[0] run return 0
execute if data storage timber:op pq[0].dc run function timber:put/decor
execute unless data storage timber:op pq[0].dc if data storage timber:op pq[0].l run function timber:put/leaf with storage timber:op pq[0]
execute unless data storage timber:op pq[0].l run function timber:put/log with storage timber:op pq[0]
data remove storage timber:op pq[0]
function timber:put/next
