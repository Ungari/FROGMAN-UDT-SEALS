_box = _this select 0;


_WA = [
"hgun_PDW2000_F",
"arifle_SDAR_F",
"launch_RPG7_F",
"hgun_ACPC2_F",
"hgun_P07_F",
"hgun_Pistol_heavy_02_F",
"SMG_05_F"

];



_WI = [
"optic_Holosight_smg",
"muzzle_snds_L",
"U_O_Wetsuit",
"ToolKit",
"Medikit",
"FirstAidKit",
"Binocular",
"Rangefinder",
"V_RebreatherIR",
"NVGoggles",
"NVGoggles_OPFOR",
"NVGoggles_INDEP",
"Laserdesignator_02",
"Laserdesignator",
"Laserdesignator_03",
"ItemCompass",
"ItemWatch",
"ItemRadio",
"muzzle_snds_acp",
"optic_Yorris",
"SatchelCharge_Remote_Mag",
"NVGoggles",
"NVGoggles_OPFOR",
"NVGoggles_INDEP",
"Laserdesignator_02",
"Laserdesignator",
"Laserdesignator_03",
"Laserbatteries",
"SmokeShellYellow",
"SmokeShellRed",
"SmokeShellOrange",
"SmokeShellPurple"
];


_WB = [
"B_FieldPack_blk_DiverExp",
"O_Assault_Diver",
"B_OutdoorPack_blk",
"B_AssaultPack_blk_DiverExp",
"B_FieldPack_blk_DiverExp"
];


_WM = [
"RPG7_F",
"SatchelCharge_Remote_Mag",
"30Rnd_556x45_Stanag_red",
"6Rnd_45ACP_Cylinder",
"11Rnd_45ACP_Mag",
"16Rnd_9x21_Mag",
"16Rnd_9x21_red_Mag",
"16Rnd_9x21_green_Mag",
"16Rnd_9x21_yellow_Mag",
"30Rnd_9x21_Mag",
"30Rnd_9x21_Red_Mag",
"30Rnd_9x21_Yellow_Mag",
"30Rnd_9x21_Green_Mag",
"30Rnd_9x21_Mag_SMG_02"
];

_AB = [ 
"B_FieldPack_blk_DiverExp",
"O_Assault_Diver",
"B_OutdoorPack_blk",
"B_AssaultPack_blk_DiverExp",
"B_FieldPack_blk_DiverExp",
"B_FieldPack_blk"
]; 
[_box,_WA,false] call BIS_fnc_addVirtualWeaponCargo;
[_box,_WI,false] call BIS_fnc_addVirtualItemCargo;
[_box,_WM,false] call BIS_fnc_addVirtualMagazineCargo;
[_box,_WB,false] call BIS_fnc_addVirtualBackpackCargo;
[_box,_AB,false] call BIS_fnc_addVirtualBackpackCargo;