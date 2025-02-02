kill @e[tag=player_model.object]

scoreboard players set $player_statues player_statues.model_index 0
data modify storage player_statues:data score.model_index set value 0
execute store result score $player_statues player_statues.model_indices run data get storage player_statues:data models

execute if score $player_statues player_statues.model_indices matches 1.. run function player_statues:internal/iterate_models with storage player_statues:data score