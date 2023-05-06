#> function markersort:_run/nearest

# store list length
execute store result score length markersort.main run data get storage markersort:data keys

# summon markers
function markersort:_run/summon

# store node value in markers
execute as @e[type=marker, tag=markersort, distance=..1] run function markersort:_run/store

# sort by finding nearest markers / lowest value is first / ascending order
execute as @e[type=marker, tag=markersort, distance=..1, sort=nearest] run function markersort:_run/find

kill @e[type=marker, tag=markersort]