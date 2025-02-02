scoreboard players set $player_statues player_statues.model_id 0
scoreboard players set $player_statues player_statues.model_id_found 0

$execute store result score $player_statues player_statues.model_id run data get storage player_statues:data models[$(model_index)].id
$execute store success score $player_statues player_statues.model_id_found if score $player_statues player_statues.model_id matches $(id)

execute store result storage player_statues:data score.model_index int 1 run scoreboard players add $player_statues player_statues.model_index 1
execute unless score $player_statues player_statues.model_index < $player_statues player_statues.model_indices run return fail
execute if score $player_statues player_statues.model_id_found matches 0 run function player_statues:internal/find_id with storage player_statues:data score