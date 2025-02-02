data modify storage player_statues:data macro.UUID set value [I;0,1,2,3]
data modify storage player_statues:data macro.UUID set from entity @s UUID
function gu:convert with storage player_statues:data macro
$data modify storage player_statues:data statues[$(statue_index)].elements[$(element_index)].UUID set from storage gu:main out
