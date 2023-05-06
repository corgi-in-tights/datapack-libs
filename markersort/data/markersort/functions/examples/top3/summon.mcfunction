#> function markersort:examples/top3/store
# stores the scoreboard and names of the pigs

execute store result storage markersort:data temp int 1.0 run scoreboard players get @s markersort.main
data modify storage markersort:data keys append from storage markersort:data temp
data modify storage markersort:data values append from entity @s CustomName
