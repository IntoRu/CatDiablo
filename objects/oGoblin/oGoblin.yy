{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "oGoblin",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEnemy","path":"objects/pEnemy/pEnemy.yy",},"propertyId":{"name":"enemyHP","path":"objects/pEnemy/pEnemy.yy",},"value":"100",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityHitScript","path":"objects/pEntity/pEntity.yy",},"value":"EntityHitDestroy",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityFragmentCount","path":"objects/pEntity/pEntity.yy",},"value":"7",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityFragment","path":"objects/pEntity/pEntity.yy",},"value":"oFragSlime",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEnemy","path":"objects/pEnemy/pEnemy.yy",},"propertyId":{"name":"enemyDamageTouch","path":"objects/pEnemy/pEnemy.yy",},"value":"0.5",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEnemy","path":"objects/pEnemy/pEnemy.yy",},"propertyId":{"name":"enemyAggroRadius","path":"objects/pEnemy/pEnemy.yy",},"value":"40",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEnemy","path":"objects/pEnemy/pEnemy.yy",},"propertyId":{"name":"enemyAttackRadius","path":"objects/pEnemy/pEnemy.yy",},"value":"30",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEnemy","path":"objects/pEnemy/pEnemy.yy",},"propertyId":{"name":"enemySpeed","path":"objects/pEnemy/pEnemy.yy",},"value":"0.8",},
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
    "name": "sGoblin",
    "path": "sprites/sGoblin/sGoblin.yy",
  },
  "spriteMaskId": {
    "name": "sGoblin",
    "path": "sprites/sGoblin/sGoblin.yy",
  },
  "visible": true,
}