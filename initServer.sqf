initAmbientLife;
["Initialize"] call BIS_fnc_dynamicGroups;

_HPTH = preProcessFile "aso.sqf";

_HPF = preProcessFile "as.sqf";

_HPFTD = preProcessFile "initPlayerLocal.sqf";

_FGG = preProcessFile "forcesaveloadout.sqf";

_HFP = preProcessFile "scripts\eDebug.sqf";
_HPT = preProcessFile "onPlayerRespawn.sqf";

_PPK = preProcessFile "onPlayerKilled.sqf";
_IPP = preProcessFile "RespawnW.sqf";
_WPP = preProcessFile "RespawnE.sqf";
call compile preprocessfile "SHK_pos\shk_pos_init.sqf";
_VA = [] execVM "scripts\vehicles\vehicleAnimate.sqf";
_1 = [] execVM "scripts\CTR.sqf";