data modify storage timber:op pc set from storage timber:op pq[0]
data modify storage timber:op pa set from storage timber:op pq[0]
execute if data storage timber:op pc{n:"minecraft:vine"} run data modify storage timber:op pa merge value {north:"false",east:"false",south:"false",west:"false",up:"false"}
execute if data storage timber:op pc{n:"minecraft:resin_clump"} run data modify storage timber:op pa merge value {north:"false",east:"false",south:"false",west:"false",up:"false",down:"false"}
execute if data storage timber:op pc{n:"minecraft:pale_hanging_moss"} run data modify storage timber:op pa merge value {tip:"false"}
execute if data storage timber:op pc{n:"minecraft:mangrove_propagule"} run data modify storage timber:op pa merge value {hanging:"false",age:"0"}
execute if data storage timber:op pc{n:"minecraft:cocoa"} run data modify storage timber:op pa merge value {facing:"north",age:"0"}
execute if data storage timber:op pc{n:"minecraft:snow"} run data modify storage timber:op pa merge value {layers:"1"}
execute if data storage timber:op pc{n:"minecraft:creaking_heart"} run data modify storage timber:op pa merge value {axis:"y",creaking_heart_state:"uprooted"}
data modify storage timber:op pa merge from storage timber:op pq[0].p
execute if data storage timber:op pc{n:"minecraft:vine"} run return run function timber:put/vine with storage timber:op pa
execute if data storage timber:op pc{n:"minecraft:resin_clump"} run return run function timber:put/resin_clump with storage timber:op pa
execute if data storage timber:op pc{n:"minecraft:pale_hanging_moss"} run return run function timber:put/pale_hanging_moss with storage timber:op pa
execute if data storage timber:op pc{n:"minecraft:mangrove_propagule"} run return run function timber:put/mangrove_propagule with storage timber:op pa
execute if data storage timber:op pc{n:"minecraft:cocoa"} run return run function timber:put/cocoa with storage timber:op pa
execute if data storage timber:op pc{n:"minecraft:snow"} run return run function timber:put/snow with storage timber:op pa
execute if data storage timber:op pc{n:"minecraft:creaking_heart"} run return run function timber:put/creaking_heart with storage timber:op pa
