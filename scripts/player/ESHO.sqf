if (side player == east) then {
_colorWest = EAST call BIS_fnc_sideColor;
[getPos pier_gl,"Frogman UDT/SEALS",150,75,0,random 1,[
["\a3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, getPos Box_Arsenal, 1, 1, 0, "Arsenal", 0],
["\a3\ui_f\data\map\markers\nato\c_ship.paa",[0.9,0,0,1], getPos hmg_o_2, 1, 1, 0, "HMG Speedboat", 0],
["\a3\ui_f\data\map\markers\nato\b_naval.paa",[0.9,0,0,1], getMarkerPos "marker_18", 1, 1, 0, "SDV Docking", 0],
["\a3\ui_f\data\map\markers\nato\c_ship.paa",[0.9,0,0,1], getPos rhib_o_2, 1, 1, 0, "RHIB", 0],
["\a3\ui_f\data\map\markers\nato\c_air.paa",[0.9,0,0,1], getPos air_o_2, 1, 1, 0, "Air Lifting", 0],
["\a3\ui_f\data\map\markers\nato\b_installation.paa",_colorWest, getPos seals_gl_3, 2, 1.5, 0, "CSAT SEALS", 1]]
,0] call BIS_fnc_establishingShot;
};
if (side player == west) then {
_colorWest = WEST call BIS_fnc_sideColor;
[getPos pier_gl_2,"Frogman UDT/SEALS",150,75,0,random 1,[
["\a3\ui_f\data\map\markers\nato\b_inf.paa", _colorWest, getPos Box_Arsenal_2, 1, 1, 0, "Arsenal", 0],
["\a3\ui_f\data\map\markers\nato\c_ship.paa",[0.9,0,0,1], getPos hmg_b_1, 1, 1, 0, "HMG Speedboat", 0],
["\a3\ui_f\data\map\markers\nato\b_naval.paa",[0.9,0,0,1], getMarkerPos "sdv_mark", 1, 1, 0, "SDV Docking", 0],
["\a3\ui_f\data\map\markers\nato\c_ship.paa",[0.9,0,0,1], getPos rhib_b_1, 1, 1, 0, "RHIB", 0],
["\a3\ui_f\data\map\markers\nato\c_air.paa",[0.9,0,0,1], getPos air_b_1, 1, 1, 0, "Air Lifting", 0],
["\a3\ui_f\data\map\markers\nato\b_installation.paa",_colorWest, getPos seals_gl, 2, 1.5, 0, "NATO SEALS", 1]]
,0] call BIS_fnc_establishingShot;
};