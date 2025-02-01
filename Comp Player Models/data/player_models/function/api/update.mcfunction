$data modify storage player_models:data temp_model set value $(model)

execute unless data storage player_models:data temp_model.id run tellraw @s {"translate": "player_models.update_model.no_id", "fallback": "You must specify a model id to update.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_models:data temp_model.id run return fail
data modify storage player_models:data score.id set from storage player_models:data temp_model.id

scoreboard players set $player_models player_models.model_index 0
data modify storage player_models:data score.model_index set value 0
execute store result score $player_models player_models.model_indices run data get storage player_models:data models

execute if score $player_models player_models.model_indices matches 1.. run function player_models:internal/find_id with storage player_models:data score
execute store result storage player_models:data score.model_index int 1 run scoreboard players remove $player_models player_models.model_index 1

execute if score $player_models player_models.model_id_found matches 1 run function player_models:internal/update_model_macro_resummon with storage player_models:data score