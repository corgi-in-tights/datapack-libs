#> function markersort:_run/find

data modify storage markersort:data keys append from entity @s data.markersort_keys
data modify storage markersort:data values append from entity @s data.markersort_values

#> *
# tellraw @a ["Sorted keys Found: ", {"nbt": "data.markersort_keys", "entity": "@s"}]
# tellraw @a ["Sorted Value Found: ", {"nbt": "data.markersort_values", "entity": "@s"}]
#> **