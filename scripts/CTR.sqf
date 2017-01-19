_findRHIBS = allMissionObjects "C_Boat_Transport_02_F";



{
_pos = [getPos _x select 0,getPos _x select 1,getPos _x select 2];
_turretType = "B_GMG_01_high_F";
_GMG = _turretType createVehicle _pos;
_GMG attachTo[_x,[0.2,1.40,1]];






} forEach _findRHIBS;