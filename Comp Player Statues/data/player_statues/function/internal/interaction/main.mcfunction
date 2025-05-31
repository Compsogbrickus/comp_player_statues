execute as @e[type=interaction, distance=..8, tag=player_statue.object, tag=player_statue.interaction] at @s if data entity @s interaction run function player_statues:internal/interaction/process
execute as @e[type=interaction, distance=..8, tag=player_statue.object, tag=player_statue.interaction] at @s if data entity @s attack run function player_statues:internal/interaction/process

advancement revoke @s only player_statues:interaction