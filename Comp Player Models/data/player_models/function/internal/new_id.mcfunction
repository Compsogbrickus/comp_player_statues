scoreboard players set $player_models player_models.model_id_found 0
$execute store success score $player_models player_models.model_id_found if data storage player_models:data models[{id:$(model_id)}]

execute store result storage player_models:data score.model_id int 1 run scoreboard players operation $player_models player_models.model_id += $player_models player_models.model_id_found

execute if score $player_models player_models.model_id_found matches 1 run function player_models:internal/new_id with storage player_models:data score