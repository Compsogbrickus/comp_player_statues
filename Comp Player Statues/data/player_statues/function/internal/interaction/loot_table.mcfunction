function player_statues:internal/spawn_loot with entity @s data."player_statue.loot_table"

execute if data entity @s data."player_statue.loot_table"{behavior: "destroy"} run function player_statues:internal/interaction/remove with entity @s data."player_statue.loot_table"