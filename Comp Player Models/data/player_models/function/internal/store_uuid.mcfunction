data modify storage player_models:data macro.UUID set value [I;0,1,2,3]
data modify storage player_models:data macro.UUID set from entity @s UUID
function gu:convert with storage player_models:data macro
$data modify storage player_models:data models[$(model_index)].elements[$(element_index)].UUID set from storage gu:main out
