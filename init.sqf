// ARMA3.RU Mission Template
enableSaving [false, false]; // Не надо ничего сейвить, мы ж не в сингл играем
0 = execVM "add_med.sqf"; // Дадим немножко медицины и беруши
setTerrainGrid 3.125; // Красивая отрисовка земли вдали

// Init modules
#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

if (isServer) then
{
	{
		_x setVariable ["controledBy", west, true];
	} forEach [flag_1, flag_2]; 
};

if (!isDedicated) then
{
	[] spawn {
	waitUntil {sleep 10; a3a_var_started};
 [ 
] spawn BIS_fnc_typeText;

};
};