execute as @e[type=interaction, distance=..8, tag=lives.object, tag=lives.interaction] at @s if data entity @s interaction run function lives:zzz/interaction/process
execute as @e[type=interaction, distance=..8, tag=lives.object, tag=lives.interaction] at @s if data entity @s attack run function lives:zzz/interaction/process

advancement revoke @s only lives:interaction