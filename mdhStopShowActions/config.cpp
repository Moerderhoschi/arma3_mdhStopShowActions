class CfgPatches
{
	class mdhStopShowActions
	{
		author = "Moerderhoschi";
		name = "mdhStopShowActions";
		url = "https://steamcommunity.com/sharedfiles/filedetails/?id=3612801655";
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"A3_Ui_F"};
	};
};

class CfgFunctions
{
	class mdh
	{
		class mdhFunctions
		{
			class mdhStopShowActions
			{
				file = "mdhStopShowActions\mdhStopShowActions.sqf";
				postInit = 1;
			};
		};
	};
};

class CfgMods
{
	class mdhStopShowActions
	{
		dir = "@mdhStopShowActions";
		name = "mdhStopShowActions";
		picture = "\a3\ui_f\data\IGUI\Cfg\Actions\Obsolete\ui_action_cancel_manualfire_ca.paa";
		hidePicture = "true";
		hideName = "true";
		actionName = "Website";
		action = "https://steamcommunity.com/sharedfiles/filedetails/?id=3612801655";
	};
};

class CfgActions
{
	class None {};
	class LoadMagazine: None {};
	//class LoadEmptyMagazine: LoadMagazine {showWindow=0;};
	//class TakeWeapon: None {showWindow=0;};
	//class TakeMagazine: None {showWindow=0;};
	//class TouchOff: None {showWindow=0;};
	//class TouchOffMines: None {showWindow=0;};
	//class SetTimer: None {showWindow=0;};
	//class UseContainerMagazine: None {showWindow=0;};
	//class Gear: None {showWindow=0;};
	//class GearOpen: None {showWindow=0;};
	//class OpenBag: None {showWindow=0;};
	//class TakeBag: None {showWindow=0;};
	//class Rearm: None {showWindow=0;};
	//class GetInCommander: None {showWindow=0;};
	//class GetInDriver: None {showWindow=0;};
	//class GetInPilot: None {showWindow=0;};
	//class GetInGunner: None {showWindow=0;};
	//class GetInCargo: None {showWindow=0;};
	//class GetInTurret: None {showWindow=0;};
	//class PutInPilot: None {showWindow=0;};
	//class PutInDriver: None {showWindow=0;};
	//class PutInCargo: None {showWindow=0;};
	//class FireInflame: None {showWindow=0;};
	//class FirePutDown: None {showWindow=0;};
	//class DropWeapon: None {showWindow=0;};
	//class PutWeapon: DropWeapon {showWindow=0;};
	//class DropItem: None {showWindow=0;};
	//class TakeItem: None {showWindow=0;};
	//class UnloadMagazine: None {showWindow=0;};

	class LoadEmptyMagazine: LoadMagazine {showWindow="profileNameSpace getVariable['mdhStopShowActionsLoadEmptyMagazine',0]";}; // original value 1
	class UnloadMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadMagazine',0]";}; // original value 1
	class TakeWeapon: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeWeapon',0]";}; // original value 1
	class TakeMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeMagazine',0]";}; // original value 1
	class DropWeapon: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropWeapon',0]";}; // original value 1
	class PutWeapon: DropWeapon {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutWeapon',0]";}; // original value 1
	class DropItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropItem',0]";}; // original value 1
	class TakeItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeItem',0]";}; // original value 1
	class TouchOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTouchOff',0]";}; // original value 1
	class TouchOffMines: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTouchOffMines',0]";}; // original value 1
	class SetTimer: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSetTimer',0]";}; // original value 1
	class UseContainerMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUseContainerMagazine',0]";}; // original value 1
	class Gear: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGear',0]";}; // original value 1
	class GearOpen: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGearOpen',0]";}; // original value 1
	class OpenBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsOpenBag',0]";}; // original value 1
	class TakeBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeBag',0]";}; // original value 1
	class Rearm: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRearm',0]";}; // original value 1
	class GetInCommander: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInCommander',0]";}; // original value 1
	class GetInDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInDriver',0]";}; // original value 1
	class GetInPilot: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInPilot',0]";}; // original value 1
	class GetInGunner: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInGunner',0]";}; // original value 1
	class GetInCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInCargo',0]";}; // original value 1
	class GetInTurret: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInTurret',0]";}; // original value 1
	class PutInPilot: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInPilot',0]";}; // original value 1
	class PutInDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInDriver',0]";}; // original value 1
	class PutInCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInCargo',0]";}; // original value 1
	class FireInflame: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFireInflame',0]";}; // original value 1
	class FirePutDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFirePutDown',0]";}; // original value 1
	class UnloadUnconsciousUnits: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadUnconsciousUnits',1]";}; // original value 1
	class FirstAid: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFirstAid',1]";}; // original value 1
	class Heal: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHeal',1]";}; // original value 1
	class HealSoldier: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealSoldier',1]";}; // original value 1
	class HealSoldierSelf: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealSoldierSelf',1]";}; // original value 1
	class RepairVehicle: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRepairVehicle',1]";}; // original value 1
	class Repair: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRepair',1]";}; // original value 1
	class Refuel: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRefuel',1]";}; // original value 1
	class TakeMine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeMine',1]";}; // original value 1
	class ActivateMine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsActivateMine',1]";}; // original value 1
	class DeactivateMine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDeactivateMine',1]";}; // original value 1
	class LadderOnDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderOnDown',1]";}; // original value 1
	class LadderOnUp: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderOnUp',1]";}; // original value 1
	class LadderOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderOff',1]";}; // original value 1
	class Talk: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTalk',1]";}; // original value 1
	class Tell: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTell',1]";}; // original value 1
	class UnmountItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnmountItem',1]";}; // original value 1
	class MountItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMountItem',1]";}; // original value 1
	class MountWeaponFromInv: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMountWeaponFromInv',1]";}; // original value 1
	class UnmountWeaponToInv: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnmountWeaponToInv',1]";}; // original value 1
	class TakeFlag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeFlag',1]";}; // original value 1
	class ReturnFlag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsReturnFlag',1]";}; // original value 1
	class CancelTakeFlag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCancelTakeFlag',1]";}; // original value 1

	//class None {};
	//class HookCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHookCargo',0]";}; // original value 0
	//class UnhookCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnhookCargo',0]";}; // original value 0
	//class LoadVehicle: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLoadVehicle',0]";}; // original value 0
	//class UnloadVehicle: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadVehicle',0]";}; // original value 0
	//class UnloadAllVehicles: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadAllVehicles',0]";}; // original value 0
	//class UnloadUnconsciousUnits: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadUnconsciousUnits',1]";}; // original value 1
	//class GetInCommander: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInCommander',0]";}; // original value 1
	//class GetInDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInDriver',0]";}; // original value 1
	//class GetInPilot: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInPilot',0]";}; // original value 1
	//class GetInGunner: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInGunner',0]";}; // original value 1
	//class GetInCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInCargo',0]";}; // original value 1
	//class GetInTurret: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetInTurret',0]";}; // original value 1
	//class PutInPilot: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInPilot',0]";}; // original value 1
	//class PutInDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInDriver',0]";}; // original value 1
	//class PutInCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInCargo',0]";}; // original value 1
	//class Heal: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHeal',1]";}; // original value 1
	//class HealSoldier: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealSoldier',1]";}; // original value 1
	//class RepairVehicle: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRepairVehicle',1]";}; // original value 1
	//class FirstAid: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFirstAid',1]";}; // original value 1
	//class DragSoldier: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDragSoldier',0]";}; // original value 0
	//class DragSoldierInterrupt: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDragSoldierInterrupt',0]";}; // original value 0
	//class CarrySoldier: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCarrySoldier',0]";}; // original value 0
	//class CarrySoldierInterrupt: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCarrySoldierInterrupt',0]";}; // original value 0
	//class DropCarried: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropCarried',0]";}; // original value 0
	//class Repair: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRepair',1]";}; // original value 1
	//class Refuel: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRefuel',1]";}; // original value 1
	//class Rearm: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRearm',0]";}; // original value 1
	//class GetOut: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetOut',0]";}; // original value 0
	//class LightOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLightOn',0]";}; // original value 0
	//class LightOff: LightOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsLightOff',0]";}; // original value 0
	//class SearchLightOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSearchLightOn',0]";}; // original value 0
	//class SearchLightOff: SearchLightOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsSearchLightOff',0]";}; // original value 0
	//class CollisionLightOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCollisionLightOn',0]";}; // original value 0
	//class CollisionLightOff: CollisionLightOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsCollisionLightOff',0]";}; // original value 0
	//class GunLightOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGunLightOn',0]";}; // original value 0
	//class GunLightOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGunLightOff',0]";}; // original value 0
	//class ArtilleryComputer: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsArtilleryComputer',0]";}; // original value 0
	//class EngineOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsEngineOn',0]";}; // original value 0
	//class EngineOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsEngineOff',0]";}; // original value 0
	//class ActiveSensorsOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsActiveSensorsOn',0]";}; // original value 0
	//class ActiveSensorsOff: ActiveSensorsOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsActiveSensorsOff',0]";}; // original value 0
	//class TakeVehicleControl: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeVehicleControl',0]";}; // original value 0
	//class SuspendVehicleControl: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSuspendVehicleControl',0]";}; // original value 0
	//class LockVehicleControl: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLockVehicleControl',0]";}; // original value 0
	//class UnlockVehicleControl: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnlockVehicleControl',0]";}; // original value 0
	//class SwitchWeapon: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSwitchWeapon',0]";}; // original value 0
	//class SwitchMagazine: SwitchWeapon {showWindow="profileNameSpace getVariable['mdhStopShowActionsSwitchMagazine',0]";}; // original value 0
	//class HideWeapon: SwitchWeapon {showWindow="profileNameSpace getVariable['mdhStopShowActionsHideWeapon',0]";}; // original value 0
	//class UseWeapon: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUseWeapon',0]";}; // original value 0
	//class LoadMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLoadMagazine',0]";}; // original value 0
	//class LoadOtherMagazine: LoadMagazine {showWindow="profileNameSpace getVariable['mdhStopShowActionsLoadOtherMagazine',0]";}; // original value 0
	//class LoadEmptyMagazine: LoadMagazine {showWindow="profileNameSpace getVariable['mdhStopShowActionsLoadEmptyMagazine',0]";}; // original value 1
	//class TakeWeapon: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeWeapon',0]";}; // original value 1
	//class TakeDropWeapon: TakeWeapon {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeDropWeapon',0]";}; // original value 0
	//class TakeMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeMagazine',0]";}; // original value 1
	//class TakeDropMagazine: TakeMagazine {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeDropMagazine',0]";}; // original value 0
	//class TakeFlag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeFlag',1]";}; // original value 1
	//class ReturnFlag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsReturnFlag',1]";}; // original value 1
	//class TurnIn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTurnIn',0]";}; // original value 0
	//class TurnOut: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTurnOut',0]";}; // original value 0
	//class WeaponInHand: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsWeaponInHand',0]";}; // original value 0
	//class WeaponOnBack: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsWeaponOnBack',0]";}; // original value 0
	//class SitDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSitDown',0]";}; // original value 0
	//class Land: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLand',0]";}; // original value 0
	//class CancelLand: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCancelLand',0]";}; // original value 0
	//class Eject: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsEject',0]";}; // original value 0
	//class MoveToDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMoveToDriver',0]";}; // original value 0
	//class MoveToPilot: MoveToDriver {showWindow="profileNameSpace getVariable['mdhStopShowActionsMoveToPilot',0]";}; // original value 0
	//class MoveToGunner: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMoveToGunner',0]";}; // original value 0
	//class MoveToCommander: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMoveToCommander',0]";}; // original value 0
	//class MoveToCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMoveToCargo',0]";}; // original value 0
	//class MoveToTurret: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMoveToTurret',0]";}; // original value 0
	//class HideBody: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHideBody',0]";}; // original value 0
	//class TouchOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTouchOff',0]";}; // original value 1
	//class TouchOffMines: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTouchOffMines',0]";}; // original value 1
	//class SetTimer: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSetTimer',0]";}; // original value 1
	//class StartTimer: SetTimer {showWindow="profileNameSpace getVariable['mdhStopShowActionsStartTimer',0]";}; // original value 0
	//class Deactivate: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDeactivate',1]";}; // original value 1
	//class NVGoggles: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsNVGoggles',0]";}; // original value 0
	//class NVGogglesOff: NVGoggles {showWindow="profileNameSpace getVariable['mdhStopShowActionsNVGogglesOff',0]";}; // original value 0
	//class ManualFire: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsManualFire',0]";}; // original value 0
	//class ManualFireCancel: ManualFire {showWindow="profileNameSpace getVariable['mdhStopShowActionsManualFireCancel',0]";}; // original value 0
	//class AutoHover: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsAutoHover',0]";}; // original value 0
	//class AutoHoverCancel: AutoHover {showWindow="profileNameSpace getVariable['mdhStopShowActionsAutoHoverCancel',0]";}; // original value 0
	//class VTOLVectoring: AutoHover {showWindow="profileNameSpace getVariable['mdhStopShowActionsVTOLVectoring',0]";}; // original value 0
	//class VTOLVectoringCancel: AutoHover {showWindow="profileNameSpace getVariable['mdhStopShowActionsVTOLVectoringCancel',0]";}; // original value 0
	//class StrokeFist: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsStrokeFist',0]";}; // original value 0
	//class StrokeGun: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsStrokeGun',0]";}; // original value 0
	//class LadderUp: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderUp',0]";}; // original value 0
	//class LadderDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderDown',0]";}; // original value 0
	//class LadderOnDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderOnDown',1]";}; // original value 1
	//class LadderOnUp: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderOnUp',1]";}; // original value 1
	//class LadderOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLadderOff',1]";}; // original value 1
	//class FireInflame: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFireInflame',0]";}; // original value 1
	//class FirePutDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFirePutDown',0]";}; // original value 1
	//class LandGear: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsLandGear',0]";}; // original value 0
	//class LandGearUp: LandGear {showWindow="profileNameSpace getVariable['mdhStopShowActionsLandGearUp',0]";}; // original value 0
	//class FlapsDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFlapsDown',0]";}; // original value 0
	//class FlapsUp: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsFlapsUp',0]";}; // original value 0
	//class VectoringDown: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsVectoringDown',0]";}; // original value 0
	//class VectoringUp: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsVectoringUp',0]";}; // original value 0
	//class Salute: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSalute',0]";}; // original value 0
	//class ScudLaunch: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsScudLaunch',0]";}; // original value 0
	//class ScudStart: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsScudStart',0]";}; // original value 0
	//class ScudCancel: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsScudCancel',0]";}; // original value 0
	//class User: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUser',1]";}; // original value 1
	//class DropWeapon: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropWeapon',0]";}; // original value 1
	//class PutWeapon: DropWeapon {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutWeapon',0]";}; // original value 1
	//class DropMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropMagazine',0]";}; // original value 0
	//class PutMagazine: DropMagazine {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutMagazine',0]";}; // original value 0
	//class UserType: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUserType',1]";}; // original value 1
	//class HandGunOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHandGunOn',0]";}; // original value 0
	//class HandGunOnStand: HandGunOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsHandGunOnStand',0]";}; // original value 0
	//class HandGunOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHandGunOff',0]";}; // original value 0
	//class HandGunOffStand: HandGunOff {showWindow="profileNameSpace getVariable['mdhStopShowActionsHandGunOffStand',0]";}; // original value 0
	//class TakeMine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeMine',1]";}; // original value 1
	//class UseContainerMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUseContainerMagazine',0]";}; // original value 1
	//class ActivateMine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsActivateMine',1]";}; // original value 1
	//class DeactivateMine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDeactivateMine',1]";}; // original value 1
	//class UseMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUseMagazine',0]";}; // original value 0
	//class IngameMenu: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsIngameMenu',0]";}; // original value 0
	//class CancelTakeFlag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCancelTakeFlag',1]";}; // original value 1
	//class CancelAction: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCancelAction',0]";}; // original value 0
	//class MarkEntity: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMarkEntity',1]";}; // original value 1
	//class MarkWeapon: MarkEntity {showWindow="profileNameSpace getVariable['mdhStopShowActionsMarkWeapon',0]";}; // original value 0
	//class TeamSwitch: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTeamSwitch',0]";}; // original value 0
	//class Gear: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGear',0]";}; // original value 1
	//class GearOpen: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGearOpen',0]";}; // original value 1
	//class OpenBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsOpenBag',0]";}; // original value 1
	//class TakeBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeBag',0]";}; // original value 1
	//class PutBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutBag',0]";}; // original value 0
	//class DropBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropBag',0]";}; // original value 0
	//class AddBag: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsAddBag',0]";}; // original value 0
	//class IRLaserOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsIRLaserOn',0]";}; // original value 0
	//class IRLaserOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsIRLaserOff',0]";}; // original value 0
	//class Assemble: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsAssemble',0]";}; // original value 0
	//class DisAssemble: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDisAssemble',0]";}; // original value 0
	//class Talk: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTalk',1]";}; // original value 1
	//class Tell: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTell',1]";}; // original value 1
	//class Surrender: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSurrender',0]";}; // original value 0
	//class GetOver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsGetOver',0]";}; // original value 0
	//class OpenParachute: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsOpenParachute',0]";}; // original value 0
	//class HelicopterAutoTrimOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHelicopterAutoTrimOn',0]";}; // original value 0
	//class HelicopterAutoTrimOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHelicopterAutoTrimOff',0]";}; // original value 0
	//class HelicopterTrimOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHelicopterTrimOn',0]";}; // original value 0
	//class HelicopterTrimOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHelicopterTrimOff',0]";}; // original value 0
	//class WheelsBrakeOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsWheelsBrakeOn',0]";}; // original value 0
	//class WheelsBrakeOff: WheelsBrakeOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsWheelsBrakeOff',0]";}; // original value 0
	//class PeriscopeDepthOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPeriscopeDepthOn',0]";}; // original value 0
	//class PeriscopeDepthOff: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPeriscopeDepthOff',0]";}; // original value 0
	//class UAVTerminalOpen: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUAVTerminalOpen',0]";}; // original value 0
	//class UAVTerminalMakeConnection: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUAVTerminalMakeConnection',0]";}; // original value 0
	//class UAVTerminalReleaseConnection: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUAVTerminalReleaseConnection',0]";}; // original value 0
	//class UAVTerminalHackConnection: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUAVTerminalHackConnection',0]";}; // original value 0
	//class BackFromUAV: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsBackFromUAV',0]";}; // original value 0
	//class SwitchToUAVDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSwitchToUAVDriver',0]";}; // original value 0
	//class SwitchToUAVGunner: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSwitchToUAVGunner',0]";}; // original value 0
	//class ListRightVehicleDisplay: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsListRightVehicleDisplay',0]";}; // original value 0
	//class ListLeftVehicleDisplay: ListRightVehicleDisplay {showWindow="profileNameSpace getVariable['mdhStopShowActionsListLeftVehicleDisplay',0]";}; // original value 0
	//class ListPrevRightVehicleDisplay: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsListPrevRightVehicleDisplay',0]";}; // original value 0
	//class ListPrevLeftVehicleDisplay: ListPrevRightVehicleDisplay {showWindow="profileNameSpace getVariable['mdhStopShowActionsListPrevLeftVehicleDisplay',0]";}; // original value 0
	//class CloseRightVehicleDisplay: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsCloseRightVehicleDisplay',0]";}; // original value 0
	//class CloseLeftVehicleDisplay: CloseRightVehicleDisplay {showWindow="profileNameSpace getVariable['mdhStopShowActionsCloseLeftVehicleDisplay',0]";}; // original value 0
	//class NextModeRightVehicleDisplay: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsNextModeRightVehicleDisplay',0]";}; // original value 0
	//class NextModeLeftVehicleDisplay: NextModeRightVehicleDisplay {showWindow="profileNameSpace getVariable['mdhStopShowActionsNextModeLeftVehicleDisplay',0]";}; // original value 0
	//class Sleep: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsSleep',0]";}; // original value 0
	//class WakeUp: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsWakeUp',0]";}; // original value 0
	//class UnmountItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnmountItem',1]";}; // original value 1
	//class MountItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMountItem',1]";}; // original value 1
	//class DropItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropItem',0]";}; // original value 1
	//class TakeItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeItem',0]";}; // original value 1
	//class UnloadMagazine: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadMagazine',0]";}; // original value 1
	//class ChangeUniformWithBody: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsChangeUniformWithBody',0]";}; // original value 0
	//class DropItemFromBody: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDropItemFromBody',0]";}; // original value 0
	//class TakeItemFromBody: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeItemFromBody',0]";}; // original value 0
	//class ChangeBackpackFromBackpack: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsChangeBackpackFromBackpack',0]";}; // original value 0
	//class TakeWeaponFromBody: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeWeaponFromBody',0]";}; // original value 0
	//class TakeBackpackFromBody: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsTakeBackpackFromBody',0]";}; // original value 0
	//class UnmountUniformItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnmountUniformItem',0]";}; // original value 0
	//class MountUniformItem: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMountUniformItem',0]";}; // original value 0
	//class MountWeaponFromInv: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsMountWeaponFromInv',1]";}; // original value 1
	//class UnmountWeaponToInv: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnmountWeaponToInv',1]";}; // original value 1
	//class OpenParachuteSteerable: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsOpenParachuteSteerable',0]";}; // original value 0
	//class OpenParachuteNonSteerable: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsOpenParachuteNonSteerable',0]";}; // original value 0
	//class ActivateBreathingBomb: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsActivateBreathingBomb',0]";}; // original value 0
	//class DeactivateBreathingBomb: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDeactivateBreathingBomb',0]";}; // original value 0
	//class PatchSoldier: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPatchSoldier',1]";}; // original value 1
	//class HealSoldierSelf: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealSoldierSelf',1]";}; // original value 1
	//class AIAssemble: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsAIAssemble',0]";}; // original value 0
	//class PutInGunner: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInGunner',0]";}; // original value 0
	//class PutInCommander: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInCommander',0]";}; // original value 0
	//class PutInTurret: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsPutInTurret',0]";}; // original value 0
	//class UnloadFromDriver: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadFromDriver',0]";}; // original value 0
	//class UnloadFromPilot: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadFromPilot',0]";}; // original value 0
	//class UnloadFromCargo: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadFromCargo',0]";}; // original value 0
	//class UnloadFromCommander: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadFromCommander',0]";}; // original value 0
	//class UnloadFromGunner: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadFromGunner',0]";}; // original value 0
	//class UnloadFromTurret: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsUnloadFromTurret',0]";}; // original value 0
	//class HealBleedingOnly: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealBleedingOnly',0]";}; // original value 0
	//class HealBleedingSelfOnly: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealBleedingSelfOnly',0]";}; // original value 0
	//class HealSoldierAuto: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealSoldierAuto',0]";}; // original value 0
	//class HealBleedingAuto: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsHealBleedingAuto',0]";}; // original value 0
	//class ActivateFins: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsActivateFins',0]";}; // original value 0
	//class DeactivateFins: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsDeactivateFins',0]";}; // original value 0
	//class BatteriesOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsBatteriesOn',1]";}; // original value 1
	//class BatteriesOff: BatteriesOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsBatteriesOff',0]";}; // original value 0
	//class APUOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsAPUOn',1]";}; // original value 1
	//class APUOff: APUOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsAPUOff',0]";}; // original value 0
	//class StarterOn1: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsStarterOn1',1]";}; // original value 1
	//class StarterOff1: StarterOn1 {showWindow="profileNameSpace getVariable['mdhStopShowActionsStarterOff1',0]";}; // original value 0
	//class StarterOn2: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsStarterOn2',1]";}; // original value 1
	//class StarterOff2: StarterOn2 {showWindow="profileNameSpace getVariable['mdhStopShowActionsStarterOff2',0]";}; // original value 0
	//class StarterOn3: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsStarterOn3',1]";}; // original value 1
	//class StarterOff3: StarterOn3 {showWindow="profileNameSpace getVariable['mdhStopShowActionsStarterOff3',0]";}; // original value 0
	//class ThrottleOff1: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleOff1',1]";}; // original value 1
	//class ThrottleIdle1: ThrottleOff1 {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleIdle1',0]";}; // original value 0
	//class ThrottleFull1: ThrottleOff1 {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleFull1',0]";}; // original value 0
	//class ThrottleOff2: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleOff2',1]";}; // original value 1
	//class ThrottleIdle2: ThrottleOff2 {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleIdle2',0]";}; // original value 0
	//class ThrottleFull2: ThrottleOff2 {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleFull2',0]";}; // original value 0
	//class ThrottleOff3: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleOff3',1]";}; // original value 1
	//class ThrottleIdle3: ThrottleOff3 {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleIdle3',0]";}; // original value 0
	//class ThrottleFull3: ThrottleOff3 {showWindow="profileNameSpace getVariable['mdhStopShowActionsThrottleFull3',0]";}; // original value 0
	//class RotorBrakeOn: None {showWindow="profileNameSpace getVariable['mdhStopShowActionsRotorBrakeOn',0]";}; // original value 0
	//class RotorBrakeOff: RotorBrakeOn {showWindow="profileNameSpace getVariable['mdhStopShowActionsRotorBrakeOff',0]";}; // original value 0
};
