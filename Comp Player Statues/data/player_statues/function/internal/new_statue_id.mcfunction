scoreboard players set $player_statues player_statues.statue_id 0
data modify storage player_statues:data score.statue_id set value 0

function player_statues:internal/new_id with storage player_statues:data score

data modify storage player_statues:data temp_statue.id set from storage player_statues:data score.statue_id