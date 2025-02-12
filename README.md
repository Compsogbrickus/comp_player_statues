# Comp Player Statues

I got tired of using datapacks from other people for player statues, so I made one for myself.

The "Comp Player Statues" folder in this repository functions as a datapack that can be dropped into a Minecraft world's "datapacks" folder. Once placed into the datapacks folder and once the world is reloaded, it will be ready for use.

## Documentation

Every player statue requires a model and texture. See the example resourcepack!

Create (minimal): `/function player_statues:api/create {statue:{texture:"<texture>"}}`

Create (full, model part elements are arbitrary, but `head`, `body`, `left_arm`, `right_arm`, `left_leg`, `right_leg`, and `interaction` have defaults): `/function player_statues:api/create {statue:{id:<id>, texture:"<texture>", pos_x:<coord>, pos_y:<coord>, pos_z:<coord>, rotation_yaw:<degrees>, rotation_pitch:<degrees>, elements:[{id:<model_part>, right_rotation:<quarternion>, scale:[<x>, <y>, <z>], left_rotation:<quarternion>, translation:[<x>, <y>, <z>]}, {id:<interaction>, width:<width>, height:<height>, response:<0,1>, translation:[<x>, <y>, <z>]}]}}`

Update (same parameters available as creating): `/function player_statues:api/update {statue:{id:<id>}}`

Remove: `/function player_statues:api/update {statue:{id:<id>, mode:"remove"}}`

Update all (no parameters, despawns and resummons all statues): `/function player_statues:api/update_all`

Statue data is stored in `player_statues:data statues`, which includes UUIDs for individual model parts. Currently, updating a statue refreshes the UUIDs, and should be used for resetting a statue rather than animations.

## Credits

**Compsogbrickus** - Datapack Creator. I wrote pretty much everything here!

**Gibbsly** - Simple UUID Converter library, which is found at <https://github.com/gibbsly/gu>

**Additional Credits** - Various player models/statues datapacks, notably one by MelonBP.