_PlayerO = _this select 0;

_PlayerK = _this select 1;

_PON = name _PlayerO;

_PKN = name _PlayerK;

if(_PKN == _PON) then {
systemChat format["%1 was killed",_PON];


}

else
{

systemChat format["%1 was killed by %2",_PON,_PKN];


};