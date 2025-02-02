# Comp Player Models

I got tired of using datapacks from other people for player statues, so I made one for myself.

The "Comp Player Models" folder repository functions as a datapack that can be dropped into a Minecraft world's "datapacks" folder. Once placed into the datapacks folder and once the world is reloaded, it will be ready for use.

## Documentation

Every player model requires a model and texture. See the example resourcepack!

Create: `/function player_models:api/create {model:{texture:"<texture>"}}`

Update: `/function player_models:api/update {model:{id:<id>}}`

Remove: `/function player_models:api/update {model:{id:<id>, mode:"remove"}}`

Update all: `/function player_models:api/update_all`

More info here later.

## Credits

**Compsogbrickus** - Datapack Creator. I wrote pretty much everything here!

**Additional Credits** - Various player models/statues datapacks, notably one by MelonBP.