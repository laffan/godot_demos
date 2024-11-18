# 03 Trickle Plink

This demo contains introductory examples of the following: 

## Tilemap Collisions & Custom Data Layers

Certain tiles have been assigned a "color" string (in the inspector click on the tileset, then Custom Data Layer) that has been added as an attribute. 

When the ball collides with a tile that has this property, `local_to()` and `local_to_map()` are used to determine which tile has been hit, so the correct sound can be triggered.  See `_on_body_entered()` in the [ball.gd](scripts/ball.gd).


## Overlapping Audio Players

Because the bell audio needs to overlap (and a single AudioStream would cut itself off) in the `_ready()` of [ball.gd](scripts/ball.gd) several audio players are generated. Inside `play_sound()` (same file) the new sound is assigned to and played from the current player. Then and a new current player is assigned using modulo to keep within the bounds of the player array.

## Bonus

Go generate your own geometric tilemap tiles at [The Simplest Tileset Generator](https://laffan.github.io/simple-tileset-generator/)