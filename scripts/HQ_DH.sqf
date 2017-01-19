_HQ = _this select 0;
_HQ addEventHandler["HandleDamage",{
_HQ allowDamage false;
if((_this select 4) == "SatchelCharge_Remote_Mag") then {
_HQ setDamage 1;
}
else {
_HQ allowDamage false;
};

}];