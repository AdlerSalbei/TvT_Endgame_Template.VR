[true] call ace_spectator_fnc_setSpectator

private _phase = missionNamespace getVariable ["Grad_Endgame_phase", 1];

//WAVE RESPAWN
if (_phase == 2) then {
    [] call grad_endgame_fnc_onPlayerKilled;
//SPECTATOR
} else {
    
};
