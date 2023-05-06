#> function markersort:examples/top3/init
# returns the top 3 values of pigs from scoreboards

# sidebar
scoreboard objectives setdisplay sidebar markersort.main

# set some random spare entities to random values, summon these yourself if you want to test
scoreboard players set @e[type=pig,name="Pig1"] markersort.main 98
scoreboard players set @e[type=pig,name="Pig2"] markersort.main 14
scoreboard players set @e[type=pig,name="Pig3"] markersort.main 3
scoreboard players set @e[type=pig,name="Pig4"] markersort.main 58
scoreboard players set @e[type=pig,name="Pig5"] markersort.main 48

# reset
data modify storage markersort:data keys set value []
data modify storage markersort:data values set value []

# store data from entities
execute as @e[type=pig,distance=..50] run function markersort:examples/top3/store

# reset scoreboard (better to store in one scoreboard and display in another, but in this case `markersort.main` is being used for both scenarios)
scoreboard players reset @e[type=pig] markersort.main

# sort by highest being first / descending
function markersort:event/descending

# display in chat
tellraw @a {"nbt": "keys", "storage": "markersort:data"}
tellraw @a {"nbt": "values", "storage": "markersort:data"}

# display in action bar
title @a actionbar [{"nbt":"values[0]","storage":"markersort:data","interpret": true}, ": ", {"nbt":"keys[0]","storage":"markersort:data"}, " | ", {"nbt":"values[1]","storage":"markersort:data","interpret": true}, ": ", {"nbt":"keys[1]","storage":"markersort:data"}, " | ", {"nbt":"values[2]","storage":"markersort:data","interpret": true}, ": ", {"nbt":"keys[2]","storage":"markersort:data"}]