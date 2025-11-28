///////////////////////////////////////////////////////////////////////////////////////////////////
// MDH STOP SHOW ACTIONS MOD(by Moerderhoschi) - v2025-11-28
// github: https://github.com/Moerderhoschi/arma3_mdhStopShowActions
// steam mod version: https://steamcommunity.com/sharedfiles/filedetails/?id=3612801655
///////////////////////////////////////////////////////////////////////////////////////////////////
if (missionNameSpace getVariable ["pMdhStopShowActions",99] == 99) then
{
	0 spawn
	{
		_valueCheck = 99;
		_defaultValue = 99;
		_env  = hasInterface;

		_diary   = 0;
		_mdhFnc  = 0;

		if (hasInterface) then
		{
			_diary =
			{
				waitUntil {uiSleep 0.1; !(isNull player)};
				_c = true;
				_t = "MDH Stop Show Action";
				if (player diarySubjectExists "MDH Mods") then
				{
					{
						if (_x#1 == _t) then {_c = false}
					} forEach (player allDiaryRecords "MDH Mods");
				}
				else
				{
					player createDiarySubject ["MDH Mods","MDH Mods"];
				};
		
				if(_c) then
				{
					mdhStopShowActionsBriefingFnc =
					{
						profileNameSpace setVariable[_this#0,_this#1];
						systemChat (_this#2);

					};

					_off = '<font color="#33CC33">OFF</font color>';
					player createDiaryRecord
					[
						"MDH Mods",
						[
							_t,
							(
								'<br/>MDH Stop Show Action is a mod created by Moerderhoschi for Arma 3. (v2025-11-28)<br/>'
							+ '<br/>'
							+ 'you are able to set the showWindow config attribute for many A3 actions.<br/>'
							+ '(original default value(without this Mod) by all actions is ON)<br/>'
							+ '<br/>'
							+ 'Set showWindow config attribute for A3 actions:'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsLoadEmptyMagazine'',1,''MDH Stop Show Action LoadEmptyMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLoadEmptyMagazine'',0,''MDH Stop Show Action LoadEmptyMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsLoadEmptyMagazine",0]==0)then{_off}else{'ON '})+')'
							+ ' - LoadEmptyMagazine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsUnloadMagazine'',1,''MDH Stop Show Action UnloadMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnloadMagazine'',0,''MDH Stop Show Action UnloadMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsUnloadMagazine",0]==0)then{_off}else{'ON '})+')'
							+ ' - UnloadMagazine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTakeWeapon'',1,''MDH Stop Show Action TakeWeapon disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeWeapon'',0,''MDH Stop Show Action TakeWeapon enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTakeWeapon",0]==0)then{_off}else{'ON '})+')'
							+ ' - TakeWeapon'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTakeMagazine'',1,''MDH Stop Show Action TakeMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeMagazine'',0,''MDH Stop Show Action TakeMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTakeMagazine",0]==0)then{_off}else{'ON '})+')'
							+ ' - TakeMagazine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsDropWeapon'',1,''MDH Stop Show Action DropWeapon disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsDropWeapon'',0,''MDH Stop Show Action DropWeapon enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsDropWeapon",0]==0)then{_off}else{'ON '})+')'
							+ ' - DropWeapon'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsPutWeapon'',1,''MDH Stop Show Action PutWeapon disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutWeapon'',0,''MDH Stop Show Action PutWeapon enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsPutWeapon",0]==0)then{_off}else{'ON '})+')'
							+ ' - PutWeapon'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsDropItem'',1,''MDH Stop Show Action DropItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsDropItem'',0,''MDH Stop Show Action DropItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsDropItem",0]==0)then{_off}else{'ON '})+')'
							+ ' - DropItem'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTakeItem'',1,''MDH Stop Show Action TakeItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeItem'',0,''MDH Stop Show Action TakeItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTakeItem",0]==0)then{_off}else{'ON '})+')'
							+ ' - TakeItem'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTouchOff'',1,''MDH Stop Show Action TouchOff disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTouchOff'',0,''MDH Stop Show Action TouchOff enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTouchOff",0]==0)then{_off}else{'ON '})+')'
							+ ' - TouchOff'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTouchOffMines'',1,''MDH Stop Show Action TouchOffMines disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTouchOffMines'',0,''MDH Stop Show Action TouchOffMines enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTouchOffMines",0]==0)then{_off}else{'ON '})+')'
							+ ' - TouchOffMines'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsSetTimer'',1,''MDH Stop Show Action SetTimer disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsSetTimer'',0,''MDH Stop Show Action SetTimer enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsSetTimer",0]==0)then{_off}else{'ON '})+')'
							+ ' - SetTimer'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsUseContainerMagazine'',1,''MDH Stop Show Action UseContainerMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUseContainerMagazine'',0,''MDH Stop Show Action UseContainerMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsUseContainerMagazine",0]==0)then{_off}else{'ON '})+')'
							+ ' - UseContainerMagazine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGear'',1,''MDH Stop Show Action Gear disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGear'',0,''MDH Stop Show Action Gear enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGear",0]==0)then{_off}else{'ON '})+')'
							+ ' - Gear'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGearOpen'',1,''MDH Stop Show Action GearOpen disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGearOpen'',0,''MDH Stop Show Action GearOpen enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGearOpen",0]==0)then{_off}else{'ON '})+')'
							+ ' - GearOpen'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsOpenBag'',1,''MDH Stop Show Action OpenBag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsOpenBag'',0,''MDH Stop Show Action OpenBag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsOpenBag",0]==0)then{_off}else{'ON '})+')'
							+ ' - OpenBag'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTakeBag'',1,''MDH Stop Show Action TakeBag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeBag'',0,''MDH Stop Show Action TakeBag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTakeBag",0]==0)then{_off}else{'ON '})+')'
							+ ' - TakeBag'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsRearm'',1,''MDH Stop Show Action Rearm disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRearm'',0,''MDH Stop Show Action Rearm enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsRearm",0]==0)then{_off}else{'ON '})+')'
							+ ' - Rearm'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGetInCommander'',1,''MDH Stop Show Action GetInCommander disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInCommander'',0,''MDH Stop Show Action GetInCommander enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGetInCommander",0]==0)then{_off}else{'ON '})+')'
							+ ' - GetInCommander'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGetInDriver'',1,''MDH Stop Show Action GetInDriver disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInDriver'',0,''MDH Stop Show Action GetInDriver enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGetInDriver",0]==0)then{_off}else{'ON '})+')'
							+ ' - GetInDriver'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGetInPilot'',1,''MDH Stop Show Action GetInPilot disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInPilot'',0,''MDH Stop Show Action GetInPilot enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGetInPilot",0]==0)then{_off}else{'ON '})+')'
							+ ' - GetInPilot'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGetInGunner'',1,''MDH Stop Show Action GetInGunner disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInGunner'',0,''MDH Stop Show Action GetInGunner enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGetInGunner",0]==0)then{_off}else{'ON '})+')'
							+ ' - GetInGunner'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGetInCargo'',1,''MDH Stop Show Action GetInCargo disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInCargo'',0,''MDH Stop Show Action GetInCargo enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGetInCargo",0]==0)then{_off}else{'ON '})+')'
							+ ' - GetInCargo'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsGetInTurret'',1,''MDH Stop Show Action GetInTurret disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInTurret'',0,''MDH Stop Show Action GetInTurret enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsGetInTurret",0]==0)then{_off}else{'ON '})+')'
							+ ' - GetInTurret'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsPutInPilot'',1,''MDH Stop Show Action PutInPilot disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutInPilot'',0,''MDH Stop Show Action PutInPilot enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsPutInPilot",0]==0)then{_off}else{'ON '})+')'
							+ ' - PutInPilot'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsPutInDriver'',1,''MDH Stop Show Action PutInDriver disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutInDriver'',0,''MDH Stop Show Action PutInDriver enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsPutInDriver",0]==0)then{_off}else{'ON '})+')'
							+ ' - PutInDriver'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsPutInCargo'',1,''MDH Stop Show Action PutInCargo disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutInCargo'',0,''MDH Stop Show Action PutInCargo enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsPutInCargo",0]==0)then{_off}else{'ON '})+')'
							+ ' - PutInCargo'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsFireInflame'',1,''MDH Stop Show Action FireInflame disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsFireInflame'',0,''MDH Stop Show Action FireInflame enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsFireInflame",0]==0)then{_off}else{'ON '})+')'
							+ ' - FireInflame'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsFirePutDown'',1,''MDH Stop Show Action FirePutDown disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsFirePutDown'',0,''MDH Stop Show Action FirePutDown enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsFirePutDown",0]==0)then{_off}else{'ON '})+')'
							+ ' - FirePutDown'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsUnloadUnconsciousUnits'',1,''MDH Stop Show Action UnloadUnconsciousUnits disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnloadUnconsciousUnits'',0,''MDH Stop Show Action UnloadUnconsciousUnits enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsUnloadUnconsciousUnits",1]==0)then{_off}else{'ON '})+')'
							+ ' - UnloadUnconsciousUnits'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsFirstAid'',1,''MDH Stop Show Action FirstAid disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsFirstAid'',0,''MDH Stop Show Action FirstAid enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsFirstAid",1]==0)then{_off}else{'ON '})+')'
							+ ' - FirstAid'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsHeal'',1,''MDH Stop Show Action Heal disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsHeal'',0,''MDH Stop Show Action Heal enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsHeal",1]==0)then{_off}else{'ON '})+')'
							+ ' - Heal'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsHealSoldier'',1,''MDH Stop Show Action HealSoldier disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsHealSoldier'',0,''MDH Stop Show Action HealSoldier enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsHealSoldier",1]==0)then{_off}else{'ON '})+')'
							+ ' - HealSoldier'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsHealSoldierSelf'',1,''MDH Stop Show Action HealSoldierSelf disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsHealSoldierSelf'',0,''MDH Stop Show Action HealSoldierSelf enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsHealSoldierSelf",1]==0)then{_off}else{'ON '})+')'
							+ ' - HealSoldierSelf'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsRepairVehicle'',1,''MDH Stop Show Action RepairVehicle disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRepairVehicle'',0,''MDH Stop Show Action RepairVehicle enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsRepairVehicle",1]==0)then{_off}else{'ON '})+')'
							+ ' - RepairVehicle'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsRepair'',1,''MDH Stop Show Action Repair disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRepair'',0,''MDH Stop Show Action Repair enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsRepair",1]==0)then{_off}else{'ON '})+')'
							+ ' - Repair'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsRefuel'',1,''MDH Stop Show Action Refuel disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRefuel'',0,''MDH Stop Show Action Refuel enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsRefuel",1]==0)then{_off}else{'ON '})+')'
							+ ' - Refuel'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTakeMine'',1,''MDH Stop Show Action TakeMine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeMine'',0,''MDH Stop Show Action TakeMine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTakeMine",1]==0)then{_off}else{'ON '})+')'
							+ ' - TakeMine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsActivateMine'',1,''MDH Stop Show Action ActivateMine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsActivateMine'',0,''MDH Stop Show Action ActivateMine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsActivateMine",1]==0)then{_off}else{'ON '})+')'
							+ ' - ActivateMine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsDeactivateMine'',1,''MDH Stop Show Action DeactivateMine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsDeactivateMine'',0,''MDH Stop Show Action DeactivateMine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsDeactivateMine",1]==0)then{_off}else{'ON '})+')'
							+ ' - DeactivateMine'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsLadderOnDown'',1,''MDH Stop Show Action LadderOnDown disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLadderOnDown'',0,''MDH Stop Show Action LadderOnDown enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsLadderOnDown",1]==0)then{_off}else{'ON '})+')'
							+ ' - LadderOnDown'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsLadderOnUp'',1,''MDH Stop Show Action LadderOnUp disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLadderOnUp'',0,''MDH Stop Show Action LadderOnUp enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsLadderOnUp",1]==0)then{_off}else{'ON '})+')'
							+ ' - LadderOnUp'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsLadderOff'',1,''MDH Stop Show Action LadderOff disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLadderOff'',0,''MDH Stop Show Action LadderOff enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsLadderOff",1]==0)then{_off}else{'ON '})+')'
							+ ' - LadderOff'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTalk'',1,''MDH Stop Show Action Talk disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTalk'',0,''MDH Stop Show Action Talk enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTalk",1]==0)then{_off}else{'ON '})+')'
							+ ' - Talk'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTell'',1,''MDH Stop Show Action Tell disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTell'',0,''MDH Stop Show Action Tell enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTell",1]==0)then{_off}else{'ON '})+')'
							+ ' - Tell'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsUnmountItem'',1,''MDH Stop Show Action UnmountItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnmountItem'',0,''MDH Stop Show Action UnmountItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsUnmountItem",1]==0)then{_off}else{'ON '})+')'
							+ ' - UnmountItem'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsMountItem'',1,''MDH Stop Show Action MountItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsMountItem'',0,''MDH Stop Show Action MountItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsMountItem",1]==0)then{_off}else{'ON '})+')'
							+ ' - MountItem'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsMountWeaponFromInv'',1,''MDH Stop Show Action MountWeaponFromInv disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsMountWeaponFromInv'',0,''MDH Stop Show Action MountWeaponFromInv enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsMountWeaponFromInv",1]==0)then{_off}else{'ON '})+')'
							+ ' - MountWeaponFromInv'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsUnmountWeaponToInv'',1,''MDH Stop Show Action UnmountWeaponToInv disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnmountWeaponToInv'',0,''MDH Stop Show Action UnmountWeaponToInv enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsUnmountWeaponToInv",1]==0)then{_off}else{'ON '})+')'
							+ ' - UnmountWeaponToInv'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsTakeFlag'',1,''MDH Stop Show Action TakeFlag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeFlag'',0,''MDH Stop Show Action TakeFlag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsTakeFlag",1]==0)then{_off}else{'ON '})+')'
							+ ' - TakeFlag'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsReturnFlag'',1,''MDH Stop Show Action ReturnFlag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsReturnFlag'',0,''MDH Stop Show Action ReturnFlag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsReturnFlag",1]==0)then{_off}else{'ON '})+')'
							+ ' - ReturnFlag'
							+ '<br/>'
							+                          '<execute expression = "[''mdhStopShowActionsCancelTakeFlag'',1,''MDH Stop Show Action CancelTakeFlag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsCancelTakeFlag'',0,''MDH Stop Show Action CancelTakeFlag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ ' (current '+(if(profileNameSpace getVariable["mdhStopShowActionsCancelTakeFlag",1]==0)then{_off}else{'ON '})+')'
							+ ' - CancelTakeFlag'
							+ '<br/>'
							+ '<br/>If you have any question you can contact me at the steam workshop page.'
							+ '<br/>'
							+ '<br/>'
							+ 'Credits and Thanks:<br/>'
							+ 'Armed-Assault.de Crew  for many great ArmA moments in many years<br/>'
							+ 'BIS For Arma 3<br/>'
							)
						]
					]
				};
				true
			};
		};

		if (hasInterface) then
		{
			if (isNil"mdhModDiaryEntries")then{mdhModDiaryEntries=[]; mdhModDiaryEntriesAdd = 1};
			mdhModDiaryEntries pushBack ["mdhStopShowActions",_diary];
			uiSleep (2 + random 1);
			if (mdhModDiaryEntriesAdd == 1) then
			{
				mdhModDiaryEntriesAdd = 0;
				mdhModDiaryEntries sort false;
				{call (_x#1)} forEach mdhModDiaryEntries;
			};
		};

		sleep (1 + random 1);
		_mdhModDiaryEntries = +mdhModDiaryEntries;
		while {missionNameSpace getVariable ["pmdhStopShowActions",_defaultValue] == _valueCheck} do
		{
			if (hasInterface) then {{call (_x#1)} forEach _mdhModDiaryEntries};
			sleep (7 + random 3);
		};
	};
};
