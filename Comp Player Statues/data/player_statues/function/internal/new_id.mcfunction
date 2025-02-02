scoreboard players set $player_statues player_statues.model_id_found 0
$execute store success score $player_statues player_statues.model_id_found if data storage player_statues:data models[{id:$(model_id)}]

execute store result storage player_statues:data score.model_id int 1 run scoreboard players operation $player_statues player_statues.model_id += $player_statues player_statues.model_id_found

execute if score $player_statues player_statues.model_id_found matches 1 run function player_statues:internal/new_id with storage player_statues:data score