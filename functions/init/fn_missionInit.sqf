if !(isServer) exitWith {};

//Initialize GlobalVariables
missionNamespace setVariable ["Grad_Endgame_phase", 1, true];

["grad_endgame_addPlayerToZeus", {
	params ["_unit"];
	{
		_x addCuratorEditableObjects [[_unit], true];
	} forEach allCurators;
}] call CBA_fnc_addEventHandler;