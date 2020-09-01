enableSaving [false, false];
enableEngineArtillery false;

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

[player] call grad_endgame_fnc_addPlayerEhs;

[{!isNull player}, {
    if (didJIP) then {
        ["grad_endgame_addPlayerToZeus", [player]] call CBA_fnc_serverEvent;
    };
}, []] call CBA_fnc_waitUntilAndExecute;

if ((side player) isEqualTo west) then {
    [[west], [east, independent, civilian]] call ace_spectator_fnc_updateSides;
} else {
    [[east], [west, independent, civilian]] call ace_spectator_fnc_updateSides;
};

/*
 * Possible camera modes are:
 *   - 0: Free
 *   - 1: First person
 *   - 2: Follow
 */
[[2], [0,1]] call ace_spectator_fnc_updateCameraModes;

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
[[-2], [-1, 0, 1, 2, 3, 4, 5, 6, 7]] call ace_spectator_fnc_updateVisionModes;
