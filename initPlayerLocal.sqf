_P = _this select 0;

_P setSpeaker "NoVoice";


["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

0 = [(_this select 0)] execVM "scripts\player\ESHO.sqf";
[ missionNamespace, "arsenalClosed", {
systemChat "Inventory saved";
[ player, [ missionNamespace, "currentInventory" ] ] call BIS_fnc_saveInventory;
}] call BIS_fnc_addScriptedEventHandler;
player addEventHandler["Respawn",{
if([missionnamespace,"currentInventory"] call BIS_fnc_inventoryExists) then {
[(_this select 0),[missionNamespace,"currentInventory"]] call BIS_fnc_loadInventory;
} 
else {
if(side (_this select 0) == west) then {
_west = [(_this select 0)] execVM "scripts\inventory\west.sqf";
}
else {
_east = [(_this select 0)] execVM "scripts\inventory\east.sqf";
};
};
}];
