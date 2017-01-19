_PS = side (_this select 0);

comment "Remove existing items";
removeAllWeapons (_this select 0);
removeAllItems (_this select 0);
removeAllAssignedItems (_this select 0);
removeUniform (_this select 0);
removeVest (_this select 0);
removeBackpack (_this select 0);
removeHeadgear (_this select 0);
removeGoggles (_this select 0);

comment "Add containers";
if(_PS == west) then {
(_this select 0) forceAddUniform "U_B_Wetsuit";
}
else {
(_this select 0) forceAddUniform "U_O_Wetsuit";
};
(_this select 0) addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {(_this select 0) addItemToUniform "SmokeShellBlue";};
(_this select 0) addItemToUniform "Chemlight_blue";
for "_i" from 1 to 2 do {(_this select 0) addItemToUniform "11Rnd_45ACP_Mag";};
for "_i" from 1 to 4 do {(_this select 0) addItemToUniform "30Rnd_556x45_Stanag_red";};
(_this select 0) addItemToUniform "30Rnd_9x21_Mag";
(_this select 0) addVest "V_RebreatherB";
(_this select 0) addBackpack "B_FieldPack_blk";
(_this select 0) addItemToBackpack "MineDetector";
(_this select 0) addItemToBackpack "ToolKit";
for "_i" from 1 to 2 do {(_this select 0) addItemToBackpack "FirstAidKit";};
for "_i" from 1 to 4 do {(_this select 0) addItemToBackpack "30Rnd_9x21_Mag";};
(_this select 0) addGoggles "G_B_Diving";

comment "Add weapons";
(_this select 0) addWeapon "arifle_SDAR_F";
(_this select 0) addWeapon "hgun_Pistol_heavy_01_F";
(_this select 0) addHandgunItem "muzzle_snds_acp";
(_this select 0) addHandgunItem "optic_MRD";
(_this select 0) addWeapon "Binocular";

comment "Add items";
(_this select 0) linkItem "ItemMap";
(_this select 0) linkItem "ItemCompass";
(_this select 0) linkItem "ItemWatch";
(_this select 0) linkItem "ItemRadio";
(_this select 0) linkItem "ItemGPS";
(_this select 0) linkItem "NVGoggles_OPFOR";
