#> function markersort:_run/store

data modify entity @s data.markersort_keys set from storage markersort:data keys[0]
data modify entity @s data.markersort_values set from storage markersort:data values[0]

#> *
# tellraw @a ["Key stored in marker: ", {"nbt": "data.markersort_keys", "entity": "@s"}]
# tellraw @a ["Value stored in marker: ", {"nbt": "data.markersort_values", "entity": "@s"}]
#> **

data remove storage markersort:data keys[0]
data remove storage markersort:data values[0]

#> *
# tellraw @a ["Original Position: ", {"nbt": "Pos[1]", "entity": "@s"}]
#> **

execute store result score temp markersort.main run data get entity @s data.markersort_keys 1
execute store result entity @s Pos[1] double 0.000000001 run scoreboard players get temp markersort.main

#> *
# tellraw @a ["New Position (moved by 0.000000001 x keys_key): ", {"nbt": "Pos[1]", "entity": "@s"}]
#> **