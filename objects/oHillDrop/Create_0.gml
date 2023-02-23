// Inherit the parent event
event_inherited();

//если предмет не разюлокирован то не выпадает 
 if(!global.playerItemUnlocked[collectScriptArg[0]]) instance_destroy()
