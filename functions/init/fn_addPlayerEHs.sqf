params ["_player"];

_player addEventHandler ["HandleRating", {0}];

["grad_endgame_phaseChange", {
	params ["_phase"];

	switch (_phase) do {
		case 0 : {
			//Add UI for Player Task to take Base 

		};
		case 1 : {

		};
		case 2 : {
			[[east, west, independent, civilian], []] call ace_spectator_fnc_updateSides;

			/*
			* Possible camera modes are:
			*   - 0: Free
			*   - 1: First person
			*   - 2: Follow
			*/
			[[0, 1, 2], []] call ace_spectator_fnc_updateCameraModes;

			/*
			* Possible vision modes are:
			*   - -2: Normal
			*   - -1: Night vision
			*   -  0: White hot
			*   -  1: Black hot
			*   -  2: Light Green Hot / Darker Green cold
			*   -  3: Black Hot / Darker Green cold
			*   -  4: Light Red Hot / Darker Red Cold
			*   -  5: Black Hot / Darker Red Cold
			*   -  6: White Hot / Darker Red Cold
			*   -  7: Thermal (Shade of Red and Green, Bodies are white)
			*/
			[[-2, -1, 0, 1, 2, 3, 4, 5, 6, 7], []] call ace_spectator_fnc_updateVisionModes;
		};
	};
}] call CBA_fnc_addEventHandler;

["grad_endgame_baseTaken", {
	systemChat str _this
}] call CBA_fnc_addEventHandler;

