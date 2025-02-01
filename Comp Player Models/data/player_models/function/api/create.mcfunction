$data modify storage player_models:data temp_model set value $(model)

execute unless data storage player_models:data temp_model.texture run tellraw @s {"translate": "player_models.new_model.no_texture", "fallback": "You must specify a texture for a model to use.", "color": "red", "bold": false, "italic": false, "underlined": false, "strikethrough": false, "obfuscated": false}
execute unless data storage player_models:data temp_model.texture run return fail

execute unless data storage player_models:data temp_model.id run function player_models:internal/new_model_id
execute unless data storage player_models:data temp_model.elements run data modify storage player_models:data temp_model.elements set value []

data modify storage player_models:data models append from storage player_models:data temp_model

scoreboard players set $player_models player_models.model_index 0
data modify storage player_models:data score.model_index set value 0
execute store result score $player_models player_models.model_index run data get storage player_models:data models
execute store result storage player_models:data score.model_index int 1 run scoreboard players remove $player_models player_models.model_index 1

function player_models:internal/update_model_macro with storage player_models:data score

function player_models:internal/iterate_elements with storage player_models:data score
