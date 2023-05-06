#> function markersort:_run/summon

summon minecraft:marker ~ ~ ~ {Tags:["markersort"]}
scoreboard players remove length markersort.main 1

#> *
# tellraw @a ["Summoned new marker"]
#> **

execute if score length markersort.main matches 1.. run function markersort:_run/summon