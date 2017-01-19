_findMRAP = allMissionObjects "B_MRAP_01_F";
_findUGV = allMissionObjects "B_UGV_01_rcws_F";
_findKajman = allMissionObjects "O_Heli_Attack_02_black_F";
_findVTOL = allMissionObjects "B_T_VTOL_01_armed_F";
_findHURON  = allMissionObjects "B_Heli_Transport_03_unarmed_F";
_findCIVILHELO = allMissionObjects "C_Heli_Light_01_civil_F";
_findBLACKHAWK = allMissionObjects "B_Heli_Transport_01_F";
_findSDV = allMissionObjects "B_SDV_01_F";
_findMOHAWK = allMissionObjects "I_Heli_Transport_02_F";
_findMRAP2 = allMissionObjects "I_MRAP_03_F";
_findTARU = allMissionObjects "O_Heli_Transport_04_F";
_findORCA = allMissionObjects "O_Heli_Light_02_unarmed_F";
_findIFRIT = allMissionObjects "O_MRAP_02_F";
{
clearWeaponCargo _x;
clearItemCargo _x;
clearMagazineCargo _x;
clearBackpackCargo _x;

_x setVehicleLock "LOCKEDPLAYER";
_x addAction["Open Door",{
	(_this select 0) animateDoor["Door_LF",1];
	(_this select 0) setVehicleLock "UNLOCKED";
	

			
},"",1,true,true,"","_target animationPhase 'Door_LF' == 0",6,false];

_x addAction["Close Door",{
	(_this select 0) animateDoor["Door_LF",0];
	
	

},"",1,true,true,"","_target animationPhase 'Door_LF' == 0",6,false];


} forEach _findMRAP;

{
_x lockCargo true;
_x addAction["Open Left Door",{
(_this select 0) animateDoor["door_L",1];
(_this select 0)lockCargo false;
},"",1,true,true,"","_target animationPhase 'door_L' == 0",5,false];

_x addAction["Close Left Door",{
(_this select 0)lockCargo true;
(_this select 0) animateDoor["door_L",0];
},"",1,true,true,"","_target animationPhase 'door_L' == 1",5,false];

_x addAction["Open Right Door",{
(_this select 0) animateDoor["door_R",1];
(_this select 0)lockCargo false;
},"",1,true,true,"","_target animationPhase 'door_R' == 0",5,false];

_x addAction["Close Right Door",{
(_this select 0) lockCargo true;
(_this select 0) animateDoor["door_R",0];
},"",1,true,true,"","_target animationPhase 'door_R' == 1",5,false];
clearWeaponCargo _x;
clearItemCargo _x;
clearMagazineCargo _x;
clearBackpackCargo _x;


} forEach _findKajman;


{

_x addAction["Open Ramp",{
(_this select 0) animateDoor["Door_1_source",1];
},"",1,true,false,"User2","",15,false];

_x addAction["Close Ramp",{
(_this select 0) animateDoor["Door_1_source",0];
},"",1,true,false,"","",15,false];

clearWeaponCargo _x;
clearItemCargo _x;
clearMagazineCargo _x;
clearBackpackCargo _x;

} forEach _findVTOL;





{


_x addAction["Open Right Door",{
(_this select 0) animateDoor["Door_R_source",1];
},"",1,true,false,"","",6,false];

_x addAction["Close Right Door",{
(_this select 0) animateDoor["Door_R_source",0];
},"",1,true,false,"","",6,false];


_x addAction["Open Left Door",{
(_this select 0) animateDoor["Door_L_source",1];
},"",1,true,false,"","",6,false];

_x addAction["Close Left Door",{
(_this select 0) animateDoor["Door_L_source",0];
},"",1,true,false,"","",6,false];

_x addAction["Open Ramp",{
(_this select 0) animateDoor["Door_rear_source",1];
},"",1,true,false,"","",6,false];

_x addAction["Close Ramp",{
(_this select 0) animateDoor["Door_rear_source",0];
},"",1,true,false,"","",6,false];

} forEach _findHURON;

{
_x lockDriver true;
_x lockCargo true;
_x enableCopilot false;
_x addAction["Open Left Door",{
(_this select 0) animateSource["DoorL_Front_Open",1];
(_this select 0) lockDriver false;
},"",1,true,true,"","_target animationPhase 'DoorL_Front_Open' == 0",5,false];

_x addAction["Close Left Door",{
(_this select 0) lockDriver true;
(_this select 0) animateSource["DoorL_Front_Open",0];
},"",1,true,true,"","_target animationPhase 'DoorL_Front_Open' == 1",5,false];

_x addAction["Open Right Door",{
(_this select 0) animateSource["DoorR_Front_Open",1];
(_this select 0) lockDriver false;
},"",1,true,true,"","_target animationPhase 'DoorR_Front_Open' == 0",5,false];

_x addAction["Close Right Door",{
(_this select 0) lockDriver true;
(_this select 0) animateSource["DoorR_Front_Open",0];
},"",1,true,true,"","_target animationPhase 'DoorR_Front_Open' == 1",5,false];

_x addAction["Open Left Cargo Door",{
(_this select 0) animateSource["DoorL_Back_Open",1];
(_this select 0)lockCargo false;
},"",1,true,true,"","_target animationPhase 'DoorL_Back_Open' == 0",5,false];

_x addAction["Close Left Cargo Door",{
(_this select 0) animateSource["DoorL_Back_Open",0];
(_this select 0)lockCargo true;
},"",1,true,true,"","_target animationPhase 'DoorL_Back_Open' == 1",5,false];

_x addAction["Open Right Cargo Door",{
(_this select 0) animateSource["DoorR_Back_Open",1];
(_this select 0)lockCargo false;
},"",1,true,true,"","_target animationPhase 'DoorL_Back_Open' == 0",5,false];

_x addAction["Close Right Cargo Door",{
(_this select 0) animateSource["DoorR_Back_Open",0];
(_this select 0)lockCargo true;
},"",1,true,true,"","_target animationPhase 'DoorL_Back_Open' == 1",5,false];
_x addAction["Fold Left Bench",{
(_this select 0) animateSource["BenchL_Up",1];
(_this select 0)lockCargo true;
},"",1,true,true,"","_target animationPhase 'BenchL_Up' == 0",5,false];

_x addAction["Open Left Bench",{
(_this select 0) animateSource["BenchL_Up",0];
(_this select 0)lockCargo true;
},"",1,true,true,"","_target animationPhase 'BenchL_Up' == 1",5,false];

_x addAction["Fold Right Bench",{
(_this select 0) animateSource["BenchR_Up",1];
(_this select 0)lockCargo true;
},"",1,true,true,"","_target animationPhase 'BenchR_Up' == 0",5,false];

_x addAction["Open Right Bench",{
(_this select 0) animateSource["BenchR_Up",0];
(_this select 0)lockCargo true;
},"",1,true,true,"","_target animationPhase 'BenchR_Up' == 1",5,false];

_x animateSource["AddBenches",1];
_x animateSource["AddGunHolder",1];
_x animateSource["AddHoldingFrame",1];
_x animateSource["AddMusicUnit",1];
_x animateSource["HitWinch_Source",1];
_x animateSource["FLIR_HRot",1];
_x animateSource["FLIR_VRot",1];
_x animateSource["AddScreen1",1];


} forEach _findCIVILHELO;
{
_x lockCargo true;
_x addAction["Open Left Door",{
(_this select 0) animateDoor["Door_L",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_L' == 0",5,false];

_x addAction["Close Left Door",{
(_this select 0) animateDoor["Door_L",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_L' == 1",5,false];

_x addAction["Open Right Door",{
(_this select 0) animateDoor["Door_R",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_R' == 0",5,false];

_x addAction["Close Right Door",{
(_this select 0) animateDoor["Door_R",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_R' == 1",5,false];







} forEach _findBLACKHAWK;



{
_x addAction ["Show Turret",
{
	(_this select 0) animateSource ["Turret", 0];
	(_this select 0) animateSource ["MainTurret", rad 0, true];
	(_this select 0) animateSource ["MainGun", rad 0, true];
}];
_x addAction ["Hide Turret", {(_this select 0) animateSource ["Turret", 1]}];
_x addAction ["Turret Left", {(_this select 0) animateSource ["MainTurret", rad 90]}];
_x addAction ["Turret Right", {(_this select 0) animateSource ["MainTurret", -rad 90]}];
_x addAction ["Turret Up", {(_this select 0) animateSource ["MainGun", rad 30]}];
_x addAction ["Turret Down", {(_this select 0) animateSource ["MainGun", -rad 20]}];
} forEach _findUGV;


{
_x addAction["Lower Periscope",{

(_this select 0) animateSource["periscope",1];
},"",1,true,true,"","_target animationPhase 'periscope' == 0",5,false];

_x addAction["Raise Periscope",{

(_this select 0) animateSource["periscope",0];
},"",1,true,true,"","_target animationPhase 'periscope' == 1",5,false];

} forEach _findSDV;



{
_x lockCargo true;
_x addAction["Open Left Door",{
(_this select 0) animateDoor["Door_Back_L",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_Back_L' == 0",5,false];

_x addAction["Close Left Door",{
(_this select 0) animateDoor["Door_Back_L",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_Back_L' == 1",5,false];

_x addAction["Open Right Door",{
(_this select 0) animateDoor["Door_Back_R",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_Back_R' == 0",5,false];

_x addAction["Close Right Door",{
(_this select 0) animateDoor["Door_Back_R",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_Back_R' == 1",5,false];



} forEach _findMOHAWK;

{
_x addAction["Open Left Door",{
(_this select 0) animateDoor["Door_LF",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_LF' == 0",5,false];

_x addAction["Close Left Door",{
(_this select 0) animateDoor["Door_LF",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_LF' == 1",5,false];

_x addAction["Open Right Door",{
(_this select 0) animateDoor["Door_RF",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_RF' == 0",5,false];

_x addAction["Close Right Door",{
(_this select 0) animateDoor["Door_RF",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_RF' == 1",5,false];

} forEach _findMRAP2;

{

_x addAction["Open Door 1",{
(_this select 0) animateDoor["Door_1_Source",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_1_Source' == 0",5,false];

_x addAction["Close Door 1",{
(_this select 0) animateDoor["Door_1_Source",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_1_Source' == 1",5,false];

_x addAction["Open Door 2",{
(_this select 0) animateDoor["Door_1_Source",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_1_Source' == 0",5,false];

_x addAction["Close Door 2",{
(_this select 0) animateDoor["Door_2_Source",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_2_Source' == 1",5,false];

_x addAction["Open Door 3",{
(_this select 0) animateDoor["Door_3_Source",1];
(_this select 0) lockCargo false;
},"",1,true,true,"","_target animationPhase 'Door_3_Source' == 0",5,false];

_x addAction["Close Door 3",{
(_this select 0) animateDoor["Door_3_Source",0];
(_this select 0) lockCargo true;
},"",1,true,true,"","_target animationPhase 'Door_3_Source' == 1",5,false];


} forEach _findTARU;

{
_x addAction["Open Doors",{
(_this select 0) animateSource["doors",1];
},"",1.5,true,true,"","_target animationPhase 'doors' == 0",5,false];

_x addAction["Close Doors",{
(_this select 0) animateSource["doors",0];
},"",1.5,true,true,"","_target animationPhase 'doors' == 1",5,false];
} forEach _findORCA;

{
_x addAction["Open Left Door",{
(_this select 0) animateDoor["door_lf",1];
},"",1,true,false,"","",7,false];

_x addAction["Close Left Door",{
(_this select 0) animateDoor["door_lf",0];
},"",1,true,false,"","",7,false];

_x addAction["open rear door",{
(_this select 0) animateDoor["door_rear",1];
},"",1,true,false,"","",7,false];

_x addAction["close rear door",{
(_this select 0) animateDoor["door_rear",0];
},"",1,true,false,"","",7,false];


_x addAction["Open Right Door",{
(_this select 0) animateDoor["door_rf",1];
},"",1,true,false,"","",7,false];

_x addAction["close Right Door",{
(_this select 0) animateDoor["door_rf",0];
},"",1,true,false,"","",7,false];

_x addAction["open Cargo Door",{
(_this select 0) animateDoor["door_rm",1];
},"",1,true,false,"","",7,false];

_x addAction["close Cargo Door",{
(_this select 0) animateDoor["door_rm",0];
},"",1,true,false,"","",7,false];



} forEach _findIFRIT;