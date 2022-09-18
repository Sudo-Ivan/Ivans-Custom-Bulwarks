class startBox_DialogNew
{
	idd = 9998;
	movingEnabled = false;
	
	class controls
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by SMITH, v1.063, #Totize)
		////////////////////////////////////////////////////////
		
		class RscFrame_1800: RscFrame
		{
			idc = 1800;
		
			x = 0.150 * safezoneW + safezoneX;
			y = 0.2 * safezoneH + safezoneY;
			w = 0.75 * safezoneW;
			h = 0.60 * safezoneH;
			colorBackground[] = {1,1,0,0.5};
			colorActive[] = {1,1,0,0.5};
		};
		class btnBulwarkShowBuild: RscButton
		{
			idc = 1600;
			action = "_nil=[]ExecVM ""bulwark\functions\fn_showBuildItemGui.sqf""";
		
			text = "BUILD"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0,0,0.05};
		};
		class btnBulwarkShowSupport: RscButton
		{
			idc = 1601;
			action = "_nil=[]ExecVM ""bulwark\functions\fn_showSupportItemGui.sqf""";
		
			text = "SUPPORT"; //--- ToDo: Localize;
			x = 0.388437 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0,0,0.05};
		};
		class listBulwarkShopCategory: RscListBox
		{
			idc = 1500;
		
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.216562 * safezoneW;
			h = 0.336 * safezoneH;
			colorBackground[] = {0,0,0,0.65};
		};
		class listBulwarkShopItem: RscListBox
		{
			idc = 1501;
		
			x = 0.5 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.223125 * safezoneW;
			h = 0.336 * safezoneH;
			colorBackground[] = {0,0,0,0.65};
		};
		class btnBulwarkBuySelected: RscButton
		{
			idc = 1602;
			action = "_nil=[]ExecVM ""bulwark\purchaseNew.sqf""";
		
			text = "PURCHASE"; //--- ToDo: Localize;
			x = 0.276875 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0,0,0.05};
		};
		class btnBulwarkShopClose: RscButton
		{
			idc = 1603;
			action = "_nil=[]ExecVM ""bulwark\functions\fn_closeShop.sqf""";
		
			text = "CLOSE"; //--- ToDo: Localize;
			x = 0.388437 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0,0,0.05};
		};
		class RscText_1001: RscText
		{
			idc = 1001;
		
			x = 0.499999 * safezoneW + safezoneX;
			y = 0.724 * safezoneH + safezoneY;
			w = 0.223125 * safezoneW;
			h = 0.028 * safezoneH;
			colorBackground[] = {0,0,0,0.65};
		};
		class RscText_1003: RscText
		{
			idc = 1003;
		
			text = "BANK"; //--- ToDo: Localize;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,1,0,1};
			colorBackground[] = {0,0,0,0.65};
		};
		class RscText_1004: RscText
		{
			idc = 1004;
		
			text = "POINT"; //--- ToDo: Localize;
			x = 0.5 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.042 * safezoneH;
			colorText[] = {1,1,0,1};
			colorBackground[] = {0,0,0,0.65};
		};
		class RscText_1005: RscText
		{
			idc = 1005;
		
			text = "0"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.042 * safezoneH;
			colorText[] = {0,1,0,1};
			colorBackground[] = {0,0,0,0.65};
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			style = "16 + 512";
		
			text = "Enter Amount"; //--- ToDo: Localize;
			x = 0.539375 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.0984375 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {0.85,0.5,1,1};
			colorBackground[] = {0,0,0,0.65};
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			action = "_nil=[]ExecVM ""bulwark\withdrawPoint.sqf""";
		
			text = "WIDR"; //--- ToDo: Localize;
			x = 0.644375 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {1,0.5,0.2,0.5};
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			action = "_nil=[]ExecVM ""bulwark\depositPoint.sqf""";
		
			text = "DEPO"; //--- ToDo: Localize;
			x = 0.68375 * safezoneW + safezoneX;
			y = 0.248 * safezoneH + safezoneY;
			w = 0.039375 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0.5,1,0.5};
		};
		class previewPicture: RscPicture
		{
			idc = 1200;
		
			text = "#(argb,8,8,3)color(0,0,0,0.5)";
			x = 0.73625 * safezoneW + safezoneX;
			y = 0.332 * safezoneH + safezoneY;
			w = 0.164062 * safezoneW;
			h = 0.224 * safezoneH;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Dynamic Bulwarks - Willtop & omNomios"; //--- ToDo: Localize;
			x = 0.499999 * safezoneW + safezoneX;
			y = 0.682 * safezoneH + safezoneY;
			w = 0.223125 * safezoneW;
			h = 0.042 * safezoneH;
			colorBackground[] = {0,0,0,0.65};
		};
		class RscText_1006: RscText
		{
			idc = 1004;
			text = "EDITED BY:"; //--- ToDo: Localize;
			x = 0.518125 * safezoneW + safezoneX;
			y = 0.724 * safezoneH + safezoneY;
			w = 0.0590625 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.5};
		};
		class RscText_1008: RscText
		{
			idc = 1008;
			text = "JACKATTACKJRMV"; //--- ToDo: Localize;
			x = 0.577188 * safezoneW + safezoneX;
			y = 0.724 * safezoneH + safezoneY;
			w = 0.0959375 * safezoneW;
			h = 0.028 * safezoneH;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,0.5};
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			action = "_nil=[]ExecVM ""bulwark\heal.sqf""";
		
			text = "Heal All (5oo Points)"; //--- ToDo: Localize;
			x = 0.16875 * safezoneW + safezoneX;
            y = 0.248 * safezoneH + safezoneY;
			w = 0.105 * safezoneW;
			h = 0.07 * safezoneH;
			colorBackground[] = {0,0,0,0.05};
		};

		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////


	};
};

