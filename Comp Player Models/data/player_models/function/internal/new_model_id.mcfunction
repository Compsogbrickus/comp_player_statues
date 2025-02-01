scoreboard players set $player_models player_models.model_id 0
data modify storage player_models:data score.model_id set value 0

function player_models:internal/new_id with storage player_models:data score

data modify storage player_models:data temp_model.id set from storage player_models:data score.model_id