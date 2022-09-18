/*
	Purchase live tickets
	
	DOMAIN: Server
	
	AUTHOR: SMITH
*/
if(isServer) then {	
	_player = _this select 0;
	_ticketType = _this select 1;	
	_shopPrice = _this select 2;
	_playerName = name _player;
	_msg  = "'" + _playerName + "' added " + str _ticketType + " lives for the team!!";
	_msg remoteExec ["hint", 0];		
	[west, parseNumber _ticketType] call BIS_fnc_respawnTickets;
	[_player, _shopPrice] remoteExec ["killPoints_fnc_spend", 2];
	[] remoteExec ["killPoints_fnc_updateHud", -2];
};