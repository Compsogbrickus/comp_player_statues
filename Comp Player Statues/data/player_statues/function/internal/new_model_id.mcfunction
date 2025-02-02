scoreboard players set $player_statues player_statues.model_id 0
data modify storage player_statues:data score.model_id set value 0

function player_statues:internal/new_id with storage player_statues:data score

data modify storage player_statues:data temp_model.id set from storage player_statues:data score.model_id