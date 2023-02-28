// Inherit the parent event
event_inherited();

image_speed = 0

z = 0

spd = 0


state = ENEMYSTATE.WANDER
hSpeed = 0
vSpeed = 0
xTo = xstart
yTo = ystart
dir = 0
timePassed = 0



waitDuration = 60
wait = 0



sprMove = sSlimeFriendly

enemyScript[ENEMYSTATE.WANDER] = SlimeFriendlyWander


collisionMap = layer_tilemap_get_id(layer_get_id("Col"))