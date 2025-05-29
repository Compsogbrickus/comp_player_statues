data modify storage player_statues:data temp_statue set value {}
data modify storage player_statues:data temp_statue set from entity @s Item.components."minecraft:custom_data".player_statue

function player_statues:internal/verify_data with storage player_statues:data temp_statue
execute if score $player_statues player_statues.verify matches 0 run kill @s
execute if score $player_statues player_statues.verify matches 0 run return fail

data modify storage player_statues:data statues prepend from storage player_statues:data temp_statue

data modify storage player_statues:data macro set value {}
function player_statues:internal/get_statue_position

data modify storage player_statues:data statues[0].elements append value {end:1b}
execute unless data storage player_statues:data statues[0].elements[0].end run function player_statues:internal/iterate_elements
data remove storage player_statues:data statues[0].elements[{end:1b}]

kill @s