// Inherit the parent event
event_inherited();

entityDropList = choose(
	[oBombDrop],
	[oCoin,oCoin],
	[oHillDrop],
	[oArrowDrop],
	-1,
	-1
)