kill @e[tag=player_statue.object]

scoreboard players set $player_statues player_statues.statue_index 0
data modify storage player_statues:data score.statue_index set value 0
execute store result score $player_statues player_statues.statue_indices run data get storage player_statues:data statues

execute if score $player_statues player_statues.statue_indices matches 1.. run function player_statues:internal/iterate_statues with storage player_statues:data score