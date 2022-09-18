//Heal all players in Bulwarks menu

			if(player getVariable "killPoints" >= 500) then {
				[player, 500] remoteExec ["killPoints_fnc_spend", 2];
				[player, player] remoteExecCall["ace_medical_treatment_fnc_fullHeal",0];
			} else {
				[format ["<t size='0.6' color='#ff3300'>Not enough points%1!</t>"], -0, -0.02, 0.2] call BIS_fnc_dynamicText;
				objPurchase = false;
			};
