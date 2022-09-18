CAT_OPEN = 0;

_listFormat = "%1 - %2";
_ctrl = (findDisplay 9998) displayCtrl 1501;
_ctrl lbSetCurSel -1;
_ctrl ctrlEnable false;
_ctrl = (findDisplay 9998) displayCtrl 1500;
_ctrl lbSetCurSel -1;
_ctrl ctrlEnable true;
lbClear _ctrl;
_ctrl lbAdd format [_listFormat, "1 ", "Buildings / Platforms"];
_ctrl lbAdd format [_listFormat, "2 ", "Bunkers  / Barricades"];
_ctrl lbAdd format [_listFormat, "3 ", "Walls     / Barbwires"];
_ctrl lbAdd format [_listFormat, "4 ", "Ramps    / Stairs"];
_ctrl lbAdd format [_listFormat, "5 ", "Bridges  /  Ladder"];
_ctrl lbAdd format [_listFormat, "6 ", "Tank Traps"];
_ctrl lbAdd format [_listFormat, "7 ", "Storage / Sentries"];
_ctrl lbAdd format [_listFormat, "8 ", "Wheeled"];
_ctrl lbAdd format [_listFormat, "9 ", "Tanks"];
_ctrl lbAdd format [_listFormat, "10 ", "Special"];


((findDisplay 9998) displayCtrl 1500) ctrlAddEventHandler ['LBSelChanged', {
	_catIndex  = lbCurSel 1500;
	_ctrl = (findDisplay 9998) displayCtrl 1501;	
	lbClear _ctrl;	
	if(CAT_OPEN == 0) then 
	{
		_ctrl ctrlEnable true;
		_itemIndex = 0;
		{
			if(_x select 6 == _catIndex) then {
			_ctrl lbAdd format ["%1 - %2", _x select 0, _x select 1];
			_ctrl lbSetValue [_itemIndex, _x select 7];
			_itemIndex = _itemIndex + 1;
			}
		} forEach BULWARK_BUILDITEMS;	
		_userSel = _ctrl lbValue _itemIndex;
	};
	if(CAT_OPEN == 1) then
	{
		_itemIndex = 0;
		{				
			if(_x select 4 == _catIndex) then
			{
			_ctrl lbAdd format ["%1 - %2", _x select 0, _x select 1];
			_ctrl lbSetValue [_itemIndex, _x select 3];
			_itemIndex = _itemIndex + 1;					
			};
		} forEach BULWARK_SUPPORTITEMS;		
	};	
}];

((findDisplay 9998) displayCtrl 1501) ctrlAddEventHandler ['LBSelChanged', {
	if(CAT_OPEN == 0) then 
	{
		_ctrl = (findDisplay 9998) displayCtrl 1501;
		if(lbCurSel _ctrl != -1) then {
		_index = lbCurSel 1501;
		_itemIndex = lbValue [1501, _index];
		_itemIndex = _itemIndex - 1;
		_picture = getText (configFile >> "CfgVehicles" >> ((BULWARK_BUILDITEMS select _itemIndex) select 2) >> "editorPreview");
		/**   getText ((BULWARK_BUILDITEMS select _index) select 2)    editorPreview = "EFM_modular_base\data\preview\EFM_beam_wood_v_1_5m.jpg";**/
		ctrlSetText [1200, _picture];
		}
	}
	else
	{
		ctrlSetText [1200, "#(argb,8,8,3)color(0,0,0,0.5)"];
	};
}];	



_ctrl = (findDisplay 9998) displayCtrl 1501;
lbClear _ctrl;
_ctrl lbAdd " ";
_ctrl lbAdd "";
_ctrl lbAdd "  Select the item category on the left ";
_ctrl lbAdd "      panel to view the build items";