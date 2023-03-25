{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rShop",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": true,
  "instanceCreationOrder": [
    {"name":"inst_329EED7A","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_9438542","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_4C9CBE68","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_4504301C","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_1EA1D0AA","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_79EE1CBB","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_5A0D4298","path":"rooms/rShop/rShop.yy",},
    {"name":"inst_3E63838C","path":"rooms/rShop/rShop.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_329EED7A","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_329EED7A","path":"rooms/rParent/rParent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":167.0,"y":135.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_9438542","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"value":"500",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"value":"350",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rNewVillage",},
          ],"rotation":0.0,"scaleX":0.5,"scaleY":0.5,"x":160.0,"y":152.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4C9CBE68","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":3,"imageSpeed":0.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oShopkeeper","path":"objects/oShopkeeper/oShopkeeper.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityCollision","path":"objects/pEntity/pEntity.yy",},"value":"True",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActivateScript","path":"objects/pEntity/pEntity.yy",},"value":"ActivateManualWeapon",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":240.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4504301C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":1,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"value":"50",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"value":"1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActiveteArgs","path":"objects/pEntity/pEntity.yy",},"value":"[\"Пиздатая граната\\n50 золотых за штуку\",1,[\"4:Покупка\",\"0:Нет спасибо\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":48.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1EA1D0AA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":2,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.BOW",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"value":"100",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"value":"10",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActiveteArgs","path":"objects/pEntity/pEntity.yy",},"value":"[\"Охуенный лук\\n100 золотых за 10 стрел\",1,[\"4:Покупка\",\"0:Нет спасибо\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":121.0,"y":48.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_79EE1CBB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":3,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.HOOK",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"value":"50",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActiveteArgs","path":"objects/pEntity/pEntity.yy",},"value":"[\"Ебучий крюк\\n50 золотых\",1,[\"4:Покупка\",\"0:Нет спасибо\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":151.0,"y":47.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5A0D4298","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":4,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.HILL",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"value":"100",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"value":"1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActiveteArgs","path":"objects/pEntity/pEntity.yy",},"value":"[\"Целебное пойло\\n100 золотых за 1 пузырь\",1,[\"4:Покупка\",\"0:Нет спасибо\"]]",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":182.0,"y":48.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3E63838C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":5,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemCost","path":"objects/oShopItem/oShopItem.yy",},"value":"500",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"itemAmount","path":"objects/oShopItem/oShopItem.yy",},"value":"10",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"propertyId":{"name":"entityActiveteArgs","path":"objects/pEntity/pEntity.yy",},"value":"[\"Магический щит\\n500 золотых за 10 зарядов\",1,[\"4:Покупка\",\"0:Нет спасибо\"]]",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oShopItem","path":"objects/oShopItem/oShopItem.yy",},"propertyId":{"name":"item","path":"objects/oShopItem/oShopItem.yy",},"value":"ITEM.SHIT",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":213.0,"y":48.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-25,-2147483648,-12,1,-2,-2147483648,1,0,-5,-2147483648,2,1,-2147483648,-7,0,-2,-2147483648,1,1,-7,
-2147483648,1,0,-12,1,-3,0,-4,-2147483648,2,0,1,-10,-2147483648,1,1,-6,-2147483648,3,0,
-2147483648,1,-10,-2147483648,2,1,0,-5,-2147483648,3,0,-2147483648,1,-9,-2147483648,2,0,1,-6,-2147483648,
-2,0,1,1,-4,-2147483648,1,0,-3,-2147483648,-2,0,1,1,-6,-2147483648,-2,0,1,1,
-9,0,2,-2147483648,1,-8,-2147483648,-5,1,1,0,-6,1,-12,-2147483648,-3,1,-28,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tCol","path":"tilesets/tCol/tCol.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesUpper","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-66,-2147483648,1,128,-8,129,1,130,-164,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tTiles","path":"tilesets/tTiles/tTiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":12,"SerialiseWidth":20,"TileCompressedData":[
-18,-2147483648,-2,0,-5,-2147483648,2,173,174,-8,176,2,177,178,-8,-2147483648,1,188,-10,189,
1,188,-8,-2147483648,1,188,-10,189,1,193,-8,-2147483648,1,188,-10,189,1,193,-8,-2147483648,
1,188,-10,189,1,193,-8,-2147483648,1,188,-10,189,1,193,-8,-2147483648,1,188,-10,189,
1,193,-8,-2147483648,1,188,-10,189,1,193,-8,-2147483648,1,203,-3,204,3,205,206,207,
-4,204,1,208,-43,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tTiles","path":"tilesets/tTiles/tTiles.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": {
    "name": "rParent",
    "path": "rooms/rParent/rParent.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 180,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 320,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":720,"hspeed":-1,"hview":180,"inherit":true,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1280,"wview":320,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}