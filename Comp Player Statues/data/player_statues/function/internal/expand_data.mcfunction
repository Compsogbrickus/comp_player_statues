data modify storage player_statues:data macro.element set value {}
data modify storage player_statues:data macro.new_elements set value []

data modify storage player_statues:data macro.element set from storage player_statues:data temp_statue.elements[0]

execute if data storage player_statues:data macro.element{type: "reference"} run function player_statues:internal/spawn_loot with storage player_statues:data macro.element

data modify storage player_statues:data macro.new_elements set from entity @n[distance=..0.01,type=item] Item.components."minecraft:custom_data"."player_statue.elements"
kill @n[distance=..0.01,type=item]

data modify storage player_statues:data macro.new_elements append value {end:1b}
execute unless data storage player_statues:data macro.new_elements[0].end run function player_statues:internal/append_elements

execute unless data storage player_statues:data macro.element{type: "reference"} run data modify storage player_statues:data temp_statue.elements append from storage player_statues:data temp_statue.elements[0]
data remove storage player_statues:data temp_statue.elements[0]

execute unless data storage player_statues:data temp_statue.elements[0].end run function player_statues:internal/expand_data