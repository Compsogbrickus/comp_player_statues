scoreboard players set $player_models player_models.model_id 0
scoreboard players set $player_models player_models.model_id_found 0

$execute store result score $player_models player_models.model_id run data get storage player_models:data models[$(model_index)].id
$execute store success score $player_models player_models.model_id_found if score $player_models player_models.model_id matches $(id)

execute store result storage player_models:data score.model_index int 1 run scoreboard players add $player_models player_models.model_index 1
execute unless score $player_models player_models.model_index < $player_models player_models.model_indices run return fail
execute if score $player_models player_models.model_id_found matches 0 run function player_models:internal/find_id with storage player_models:data score