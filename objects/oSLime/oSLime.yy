{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "oSLime",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEnemy","path":"objects/pEnemy/pEnemy.yy",},"propertyId":{"name":"enemyHP","path":"objects/pEnemy/pEnemy.yy",},"value":"15",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityHitScript","path":"objects/pEntity/pEntity.yy",},"value":"EntityHitDestroy",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityFragmentCount","path":"objects/pEntity/pEntity.yy",},"value":"7",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityFragment","path":"objects/pEntity/pEntity.yy",},"value":"oFragSlime",},
  ],
  "parent": {
    "name": "Enemy",
    "path": "folders/Enemy.yy",
  },
  "parentObjectId": {
    "name": "pEnemy",
    "path": "objects/pEnemy/pEnemy.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [],
  "solid": false,
  "spriteId": {
    "name": "sSlime",
    "path": "sprites/sSlime/sSlime.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}