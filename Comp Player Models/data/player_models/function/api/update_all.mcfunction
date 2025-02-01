kill @e[tag=player_model.object]

scoreboard players set $player_models player_models.model_index 0
data modify storage player_models:data score.model_index set value 0
execute store result score $player_models player_models.model_indices run data get storage player_models:data models

execute if score $player_models player_models.model_indices matches 1.. run function player_models:internal/iterate_models with storage player_models:data score