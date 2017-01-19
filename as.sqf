_box = _this select 0;
_AI = [ 
"U_B_Wetsuit",
"FirstAidKit",
"Rangefinder",
"V_RebreatherB",
"G_B_Diving",
"ItemMap",
"ItemCompass",
"ItemWatch",
"ItemRadio",
"ToolKit",
"muzzle_snds_L",
"optic_MRD",
"muzzle_snds_L",
"optic_Holosight_smg",
"Medkit",
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

_AB = [ 
"B_FieldPack_blk_DiverExp",
"O_Assault_Diver",
"B_OutdoorPack_blk",
"B_AssaultPack_blk_DiverExp",
"B_FieldPack_blk_DiverExp",
"B_FieldPack_blk"
];

_AW = [
"arifle_SDAR_F",
"hgun_Pistol_heavy_01_F",
"hgun_Rook40_F",
"hgun_PDW2000_F",
"launch_RPG7_F",
"hgun_ACPC2_F",
"hgun_P07_F",
"hgun_Pistol_heavy_02_F",
"SMG_05_F"
];

_AM = [
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
"RPG7_F",
"SatchelCharge_Remote_Mag",
"30Rnd_9x21_Mag_SMG_02"
];


[_box,_AI,false] call BIS_fnc_addVirtualItemCargo;
[_box,_AW,false] call BIS_fnc_addVirtualWeaponCargo;
[_box,_AB,false] call BIS_fnc_addVirtualBackpackCargo;
[_box,_AM,false] call BIS_fnc_addVirtualMagazineCargo;