function lives:zzz/spawn_loot with entity @s data."lives.loot_table"

execute if data entity @s data."lives.loot_table"{behavior: "destroy"} run function lives:zzz/interaction/remove with entity @s data."lives.loot_table"