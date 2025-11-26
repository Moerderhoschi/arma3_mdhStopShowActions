///////////////////////////////////////////////////////////////////////////////////////////////////
// MDH STOP SHOW ACTIONS MOD(by Moerderhoschi) - v2025-11-26
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

					player createDiaryRecord
					[
						"MDH Mods",
						[
							_t,
							(
								'<br/>MDH Stop Show Action is a mod created by Moerderhoschi for Arma 3. (v2025-11-26)<br/>'
							+ '<br/>'
							+ 'you are able to set the showWindow config attribute for many A3 actions.<br/>'
							+ 'Set showWindow config attribute for A3 actions (Gamerestart required):<br/>'
							+ '(original value by all actions is ON)<br/>'
							+ '<br/>LoadEmptyMagazine: '
							+                          '<execute expression = "[''mdhStopShowActionsLoadEmptyMagazine'',1,''MDH Stop Show Action LoadEmptyMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLoadEmptyMagazine'',0,''MDH Stop Show Action LoadEmptyMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>UnloadMagazine: '
							+                          '<execute expression = "[''mdhStopShowActionsUnloadMagazine'',1,''MDH Stop Show Action UnloadMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnloadMagazine'',0,''MDH Stop Show Action UnloadMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TakeWeapon: '
							+                          '<execute expression = "[''mdhStopShowActionsTakeWeapon'',1,''MDH Stop Show Action TakeWeapon disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeWeapon'',0,''MDH Stop Show Action TakeWeapon enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TakeMagazine: '
							+                          '<execute expression = "[''mdhStopShowActionsTakeMagazine'',1,''MDH Stop Show Action TakeMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeMagazine'',0,''MDH Stop Show Action TakeMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>DropWeapon: '
							+                          '<execute expression = "[''mdhStopShowActionsDropWeapon'',1,''MDH Stop Show Action DropWeapon disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsDropWeapon'',0,''MDH Stop Show Action DropWeapon enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>PutWeapon: '
							+                          '<execute expression = "[''mdhStopShowActionsPutWeapon'',1,''MDH Stop Show Action PutWeapon disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutWeapon'',0,''MDH Stop Show Action PutWeapon enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>DropItem: '
							+                          '<execute expression = "[''mdhStopShowActionsDropItem'',1,''MDH Stop Show Action DropItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsDropItem'',0,''MDH Stop Show Action DropItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TakeItem: '
							+                          '<execute expression = "[''mdhStopShowActionsTakeItem'',1,''MDH Stop Show Action TakeItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeItem'',0,''MDH Stop Show Action TakeItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TouchOff: '
							+                          '<execute expression = "[''mdhStopShowActionsTouchOff'',1,''MDH Stop Show Action TouchOff disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTouchOff'',0,''MDH Stop Show Action TouchOff enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TouchOffMines: '
							+                          '<execute expression = "[''mdhStopShowActionsTouchOffMines'',1,''MDH Stop Show Action TouchOffMines disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTouchOffMines'',0,''MDH Stop Show Action TouchOffMines enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>SetTimer: '
							+                          '<execute expression = "[''mdhStopShowActionsSetTimer'',1,''MDH Stop Show Action SetTimer disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsSetTimer'',0,''MDH Stop Show Action SetTimer enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>UseContainerMagazine: '
							+                          '<execute expression = "[''mdhStopShowActionsUseContainerMagazine'',1,''MDH Stop Show Action UseContainerMagazine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUseContainerMagazine'',0,''MDH Stop Show Action UseContainerMagazine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Gear: '
							+                          '<execute expression = "[''mdhStopShowActionsGear'',1,''MDH Stop Show Action Gear disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGear'',0,''MDH Stop Show Action Gear enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GearOpen: '
							+                          '<execute expression = "[''mdhStopShowActionsGearOpen'',1,''MDH Stop Show Action GearOpen disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGearOpen'',0,''MDH Stop Show Action GearOpen enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>OpenBag: '
							+                          '<execute expression = "[''mdhStopShowActionsOpenBag'',1,''MDH Stop Show Action OpenBag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsOpenBag'',0,''MDH Stop Show Action OpenBag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TakeBag: '
							+                          '<execute expression = "[''mdhStopShowActionsTakeBag'',1,''MDH Stop Show Action TakeBag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeBag'',0,''MDH Stop Show Action TakeBag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Rearm: '
							+                          '<execute expression = "[''mdhStopShowActionsRearm'',1,''MDH Stop Show Action Rearm disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRearm'',0,''MDH Stop Show Action Rearm enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GetInCommander: '
							+                          '<execute expression = "[''mdhStopShowActionsGetInCommander'',1,''MDH Stop Show Action GetInCommander disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInCommander'',0,''MDH Stop Show Action GetInCommander enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GetInDriver: '
							+                          '<execute expression = "[''mdhStopShowActionsGetInDriver'',1,''MDH Stop Show Action GetInDriver disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInDriver'',0,''MDH Stop Show Action GetInDriver enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GetInPilot: '
							+                          '<execute expression = "[''mdhStopShowActionsGetInPilot'',1,''MDH Stop Show Action GetInPilot disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInPilot'',0,''MDH Stop Show Action GetInPilot enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GetInGunner: '
							+                          '<execute expression = "[''mdhStopShowActionsGetInGunner'',1,''MDH Stop Show Action GetInGunner disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInGunner'',0,''MDH Stop Show Action GetInGunner enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GetInCargo: '
							+                          '<execute expression = "[''mdhStopShowActionsGetInCargo'',1,''MDH Stop Show Action GetInCargo disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInCargo'',0,''MDH Stop Show Action GetInCargo enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>GetInTurret: '
							+                          '<execute expression = "[''mdhStopShowActionsGetInTurret'',1,''MDH Stop Show Action GetInTurret disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsGetInTurret'',0,''MDH Stop Show Action GetInTurret enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>PutInPilot: '
							+                          '<execute expression = "[''mdhStopShowActionsPutInPilot'',1,''MDH Stop Show Action PutInPilot disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutInPilot'',0,''MDH Stop Show Action PutInPilot enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>PutInDriver: '
							+                          '<execute expression = "[''mdhStopShowActionsPutInDriver'',1,''MDH Stop Show Action PutInDriver disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutInDriver'',0,''MDH Stop Show Action PutInDriver enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>PutInCargo: '
							+                          '<execute expression = "[''mdhStopShowActionsPutInCargo'',1,''MDH Stop Show Action PutInCargo disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsPutInCargo'',0,''MDH Stop Show Action PutInCargo enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>FireInflame: '
							+                          '<execute expression = "[''mdhStopShowActionsFireInflame'',1,''MDH Stop Show Action FireInflame disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsFireInflame'',0,''MDH Stop Show Action FireInflame enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>FirePutDown: '
							+                          '<execute expression = "[''mdhStopShowActionsFirePutDown'',1,''MDH Stop Show Action FirePutDown disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsFirePutDown'',0,''MDH Stop Show Action FirePutDown enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>UnloadUnconsciousUnits: '
							+                          '<execute expression = "[''mdhStopShowActionsUnloadUnconsciousUnits'',1,''MDH Stop Show Action UnloadUnconsciousUnits disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnloadUnconsciousUnits'',0,''MDH Stop Show Action UnloadUnconsciousUnits enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>FirstAid: '
							+                          '<execute expression = "[''mdhStopShowActionsFirstAid'',1,''MDH Stop Show Action FirstAid disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsFirstAid'',0,''MDH Stop Show Action FirstAid enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Heal: '
							+                          '<execute expression = "[''mdhStopShowActionsHeal'',1,''MDH Stop Show Action Heal disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsHeal'',0,''MDH Stop Show Action Heal enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>HealSoldier: '
							+                          '<execute expression = "[''mdhStopShowActionsHealSoldier'',1,''MDH Stop Show Action HealSoldier disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsHealSoldier'',0,''MDH Stop Show Action HealSoldier enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>HealSoldierSelf: '
							+                          '<execute expression = "[''mdhStopShowActionsHealSoldierSelf'',1,''MDH Stop Show Action HealSoldierSelf disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsHealSoldierSelf'',0,''MDH Stop Show Action HealSoldierSelf enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>RepairVehicle: '
							+                          '<execute expression = "[''mdhStopShowActionsRepairVehicle'',1,''MDH Stop Show Action RepairVehicle disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRepairVehicle'',0,''MDH Stop Show Action RepairVehicle enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Repair: '
							+                          '<execute expression = "[''mdhStopShowActionsRepair'',1,''MDH Stop Show Action Repair disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRepair'',0,''MDH Stop Show Action Repair enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Refuel: '
							+                          '<execute expression = "[''mdhStopShowActionsRefuel'',1,''MDH Stop Show Action Refuel disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsRefuel'',0,''MDH Stop Show Action Refuel enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TakeMine: '
							+                          '<execute expression = "[''mdhStopShowActionsTakeMine'',1,''MDH Stop Show Action TakeMine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeMine'',0,''MDH Stop Show Action TakeMine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>ActivateMine: '
							+                          '<execute expression = "[''mdhStopShowActionsActivateMine'',1,''MDH Stop Show Action ActivateMine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsActivateMine'',0,''MDH Stop Show Action ActivateMine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>DeactivateMine: '
							+                          '<execute expression = "[''mdhStopShowActionsDeactivateMine'',1,''MDH Stop Show Action DeactivateMine disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsDeactivateMine'',0,''MDH Stop Show Action DeactivateMine enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>LadderOnDown: '
							+                          '<execute expression = "[''mdhStopShowActionsLadderOnDown'',1,''MDH Stop Show Action LadderOnDown disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLadderOnDown'',0,''MDH Stop Show Action LadderOnDown enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>LadderOnUp: '
							+                          '<execute expression = "[''mdhStopShowActionsLadderOnUp'',1,''MDH Stop Show Action LadderOnUp disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLadderOnUp'',0,''MDH Stop Show Action LadderOnUp enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>LadderOff: '
							+                          '<execute expression = "[''mdhStopShowActionsLadderOff'',1,''MDH Stop Show Action LadderOff disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsLadderOff'',0,''MDH Stop Show Action LadderOff enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Talk: '
							+                          '<execute expression = "[''mdhStopShowActionsTalk'',1,''MDH Stop Show Action Talk disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTalk'',0,''MDH Stop Show Action Talk enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>Tell: '
							+                          '<execute expression = "[''mdhStopShowActionsTell'',1,''MDH Stop Show Action Tell disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTell'',0,''MDH Stop Show Action Tell enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>UnmountItem: '
							+                          '<execute expression = "[''mdhStopShowActionsUnmountItem'',1,''MDH Stop Show Action UnmountItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnmountItem'',0,''MDH Stop Show Action UnmountItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>MountItem: '
							+                          '<execute expression = "[''mdhStopShowActionsMountItem'',1,''MDH Stop Show Action MountItem disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsMountItem'',0,''MDH Stop Show Action MountItem enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>MountWeaponFromInv: '
							+                          '<execute expression = "[''mdhStopShowActionsMountWeaponFromInv'',1,''MDH Stop Show Action MountWeaponFromInv disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsMountWeaponFromInv'',0,''MDH Stop Show Action MountWeaponFromInv enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>UnmountWeaponToInv: '
							+                          '<execute expression = "[''mdhStopShowActionsUnmountWeaponToInv'',1,''MDH Stop Show Action UnmountWeaponToInv disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsUnmountWeaponToInv'',0,''MDH Stop Show Action UnmountWeaponToInv enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>TakeFlag: '
							+                          '<execute expression = "[''mdhStopShowActionsTakeFlag'',1,''MDH Stop Show Action TakeFlag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsTakeFlag'',0,''MDH Stop Show Action TakeFlag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>ReturnFlag: '
							+                          '<execute expression = "[''mdhStopShowActionsReturnFlag'',1,''MDH Stop Show Action ReturnFlag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsReturnFlag'',0,''MDH Stop Show Action ReturnFlag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>CancelTakeFlag: '
							+                          '<execute expression = "[''mdhStopShowActionsCancelTakeFlag'',1,''MDH Stop Show Action CancelTakeFlag disabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">ON</execute>'
							+ ' / <font color="#33CC33"><execute expression = "[''mdhStopShowActionsCancelTakeFlag'',0,''MDH Stop Show Action CancelTakeFlag enabled (gamerestart needed)''] call mdhStopShowActionsBriefingFnc">OFF</execute></font color>'
							+ '<br/>'
							+ '<br/>If you have any question you can contact me at the steam workshop page.'
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
		while {missionNameSpace getVariable ["pmdhStopShowActions",_defaultValue] == _valueCheck} do
		{
			if (hasInterface) then {{call (_x#1)} forEach mdhModDiaryEntries};
			sleep (7 + random 3);
		};
	};
};
