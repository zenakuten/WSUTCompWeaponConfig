
class MutWeaponConfig extends Mutator
    config(WSUTCompWeaponConfig)
    PerObjectConfig;

var string FriendlyVersion;

// global config
var config bool bModifyWeapons;

// shieldgun
var config bool bModifyShieldGun;
var config float ShieldPrimary_FireRate;
var config float ShieldPrimary_AmmoPerFire;
var config float ShieldPrimary_ShieldRange;
var config float ShieldPrimary_MinHoldTime;
var config float ShieldPrimary_MinForce; 
var config float ShieldPrimary_MaxForce;
var config float ShieldPrimary_MinDamage;
var config float ShieldPrimary_MaxDamage;
var config float ShieldPrimary_SelfForceScale;
var config float ShieldPrimary_SelfDamageScale;
var config float ShieldPrimary_MinSelfDamage;
var config float ShieldPrimary_AutoFireTestFreq;
var config float ShieldPrimary_FullyChargedTime;
var config bool ShieldPrimary_bAutoRelease;
var config bool ShieldPrimary_bStartedChargingForce;
var	config byte  ShieldPrimary_ChargingSoundVolume;
var config float ShieldPrimary_AutoHitTime;
var config float ShieldSecondary_FireRate;
var config float ShieldSecondary_AmmoPerFire;
var config float ShieldSecondary_AmmoRegenTime;
var config float ShieldSecondary_ChargeupTime;
var config byte ShieldSecondary_ShieldSoundVolume;
var config float ShieldGun_PutDownTime;
var config float ShieldGun_BringUpTime;
var config float ShieldGun_MinReloadPct;

// assault rifle
var config bool bModifyAssaultRifle;
var config float AssaultRifle_PutDownTime;
var config float AssaultRifle_BringUpTime;
var config float AssaultRifle_MinReloadPct;
var config bool AssaultRifle_bDualMode;
var config int AssaultPrimary_DamageMin;
var config int AssaultPrimary_DamageMax;
var config float AssaultPrimary_TraceRange;
var config float AssaultPrimary_Momentum;
var config int AssaultPrimary_AmmoPerFire;
var config float AssaultPrimary_FireRate;
var config float AssaultPrimary_AimError;
var config float AssaultPrimary_Spread;
var config float AssaultSecondary_DamageAtten;
var config float AssaultSecondary_mScale;
var config float AssaultSecondary_mScaleMultiplier;
var config float AssaultSecondary_mSpeedMin;
var config float AssaultSecondary_mSpeedMax;
var config float AssaultSecondary_mHoldSpeedMin;
var config float AssaultSecondary_mHoldSpeedMax;
var config float AssaultSecondary_mHoldSpeedGainPerSec;
var config float AssaultSecondary_mWaitTime;
var config float AssaultGrenade_ExplodeTimer;
var config float AssaultGrenade_DampenFactor;
var config float AssaultGrenade_DampenFactorParallel;
var config float AssaultGrenade_TossZ;
var config float AssaultGrenade_Damage;
var config float AssaultGrenade_DamageRadius;
var config float AssaultGrenade_MomentumTransfer;
var config bool bModifyAssaultAmmo;
var config int AssaultRifleAmmoGiven;
var config int AssaultGrenadesGiven;

// bio rifle
var config bool bModifyBioRifle;
var config float BioPrimary_FireRate;
var config float BioPrimary_AmmoPerFire;
var config float BioSecondary_FireRate;
var config float BioSecondary_GoopUpRate;
var config float BioSecondary_MaxGoopLoad;
var config int Bio_ProjBaseDamage;
var config float Bio_ProjGloblingSpeed;
var config float Bio_ProjRestTime;
var config float Bio_ProjTouchDetinationDelay;
var config float Bio_ProjDripTime;
var config int Bio_ProjMaxGoopLevel;
var config bool Bio_ProjMergeGlobs;
var config float BioRifle_PutDownTime;
var config float BioRifle_BringUpTime;
var config float BioRifle_MinReloadPct;
var config bool bGiveBioRifle;
var config int BioAmmoGiven;

//shock
var config bool bModifyShockRifle;
var config int ShockPrimary_TraceRange;
var config float ShockPrimary_Momentum;
var config int ShockPrimary_AmmoPerFire;
var config int ShockPrimary_DamageMin;
var config int ShockPrimary_DamageMax;
var config float ShockPrimary_FireRate;
var config int ShockSecondary_AmmoPerFire;
var config float ShockSecondary_FireRate;
var config int ShockSecondary_ProjSpeed;
var config int ShockSecondary_ProjMaxSpeed;
var config int ShockSecondary_ProjDamage;
var config int ShockSecondary_ProjDamageRadius;
var config int ShockSecondary_ProjMomentumTransfer;
var config int ShockSecondary_ProjComboDamage;
var config int ShockSecondary_ProjComboRadius;
var config int ShockSecondary_ProjComboMomentumTransfer;
var config int ShockSecondary_ProjLifeSpan;
var config int ShockSecondary_ProjComboAmmoCost;
var config int ShockSecondary_ProjForceScale;
var config int ShockSecondary_ProjForceRadius;
var config int ShockSecondary_ProjSoundRadius;
var config int ShockSecondary_ProjSoundVolume;
var config float ShockRifle_PutDownTime;
var config float ShockRifle_BringUpTime;
var config float ShockRifle_MinReloadPct;
var config bool bGiveShock;
var config int ShockAmmoGiven;

//link
var config bool bModifyLinkGun;
var config int LinkPrimary_AmmoPerFire;
var config float LinkPrimary_FireRate;
var config float LinkProj_Damage;
var config float LinkProj_DamageRadius;
var config float LinkProj_Speed;
var config float LinkProj_MaxSpeed;
var config float LinkProj_MomentumTransfer;
var config float LinkProj_LifeSpan;
var config float LinkProj_CullDistance;
var config int LinkSecondary_TraceRange;
var config float LinkSecondary_MomentumTransfer;
var config int LinkSecondary_AmmoPerFire;
var config int LinkSecondary_Damage;
var config float LinkSecondary_FireRate;
var config float LinkSecondary_LinkFlexibility;
var config float LinkSecondary_LinkBreakDelay;
var config float LinkGun_PutDownTime;
var config float LinkGun_BringUpTime;
var config float LinkGun_MinReloadPct;
var config bool bGiveLinkGun;
var config int LinkGunAmmoGiven;

// minigun
var config bool bModifyMinigun;
var config float Minigun_PutDownTime;
var config float Minigun_BringUpTime;
var config float Minigun_MinReloadPct;
var config int MinigunPrimary_DamageMin;
var config int MinigunPrimary_DamageMax;
var config float MinigunPrimary_TraceRange;
var config float MinigunPrimary_Momentum;
var config int MinigunPrimary_AmmoPerFire;
var config int MinigunPrimary_RoundsPerRotation;
var config float MinigunPrimary_BarrelRotationsPerSec;
var config float MinigunPrimary_AimError;
var config float MinigunPrimary_Spread;
var config float MinigunPrimary_PreFireTime;
var config float MinigunPrimary_WindupTime;
var config int MinigunSecondary_DamageMin;
var config int MinigunSecondary_DamageMax;
var config float MinigunSecondary_TraceRange;
var config float MinigunSecondary_Momentum;
var config int MinigunSecondary_AmmoPerFire;
var config int MinigunSecondary_RoundsPerRotation;
var config float MinigunSecondary_BarrelRotationsPerSec;
var config float MinigunSecondary_AimError;
var config float MinigunSecondary_Spread;
var config float MinigunSecondary_PreFireTime;
var config float MinigunSecondary_WindupTime;
var config bool bGiveMinigun;
var config int MinigunAmmoGiven;

// flak
var config bool bModifyFlakCannon;
var config float FlakCannon_BringUpTime;
var config float FlakCannon_PutDownTime;
var config float FlakCannon_MinReloadPct;
var config int FlakPrimary_AmmoPerFire;
var config float FlakPrimary_FireRate;
var config int FlakPrimary_ProjPerFire;
var config float FlakPrimary_Spread;
var config byte FlakChunk_Bounces;
var config float FlakChunk_DamageAtten;
var config float FlakChunk_Speed;
var config float FlakChunk_MaxSpeed;
var config float FlakChunk_Damage;
var config float FlakChunk_MomentumTransfer;
var config float FlakChunk_CullDistance;
var config float FlakChunk_LifeSpan;
var config bool FlakChunk_Bounce;
var config int FlakSecondary_AmmoPerFire;
var config float FlakSecondary_FireRate;
var config int FlakSecondary_ProjPerFire;
var config float FlakSecondary_Spread;
var config float FlakShell_TossZ;
var config float FlakShell_Speed;
var config float FlakShell_MaxSpeed;
var config float FlakShell_Damage;
var config float FlakShell_DamageRadius;
var config float FlakShell_MomentumTransfer;
var config float FlakShell_CullDistance;
var config float FlakShell_LifeSpan;
var config bool bGiveFlakCannon;
var config int FlakCannonAmmoGiven;

// rocket launcher
var config bool bModifyRocketLauncher;
var config float RocketLauncher_PutDownTime;
var config float RocketLauncher_BringUpTime;
var config float RocketLauncher_MinReloadPct;
var config float RocketLauncher_SeekCheckFreq;
var config float RocketLauncher_SeekRange;
var config float RocketLauncher_LockRequiredTime;
var config float RocketLauncher_UnLockRequiredTime;
var config float RocketLauncher_LockAim;
var config int RocketPrimary_AmmoPerFire;
var config float RocketPrimary_FireRate;
var config int RocketSecondary_AmmoPerFire;
var config float RocketSecondary_FireRate;
var config float RocketSecondary_TightSpread;
var config float RocketSecondary_LooseSpread;
var config int RocketSecondary_MaxLoad;
var config float RocketSecondary_MaxHoldTime;
var config int RocketProj_Speed;
var config int RocketProj_MaxSpeed;
var config int RocketProj_Damage;
var config int RocketProj_DamageRadius;
var config int RocketProj_MomentumTransfer;
var config int RocketProj_LifeSpan;
var config float RocketProj_FlockRadius;
var config float RocketProj_FlockStiffness;
var config float RocketProj_FlockMaxForce;
var config float RocketProj_FlockCurlForce;
var config bool bGiveRocketLauncher;
var config int RocketLauncherAmmoGiven;

// lightning gun
var config bool bModifySniperRifle;
var config int SniperPrimary_AmmoPerFire;
var config int SniperPrimary_DamageMin;
var config int SniperPrimary_DamageMax;
var config int SniperPrimary_TraceRange;
var config float SniperPrimary_FireRate;
var config int SniperPrimary_NumArcs;
var config float SniperPrimary_SecDamageMult;
var config int SniperPrimary_SecTraceDist;
var config float SniperPrimary_HeadshotDamageMult;
var config float SniperRifle_PutDownTime;
var config float SniperRifle_BringUpTime;
var config float SniperRifle_MinReloadPct;
var config bool bGiveSniperRifle;
var config int SniperRifleAmmoGiven;

// classic sniper rifle
var config bool bModifyClassicSniperRifle;
var config int ClassicSniperPrimary_AmmoPerFire;
var config int ClassicSniperPrimary_DamageMin;
var config int ClassicSniperPrimary_DamageMax;
var config int ClassicSniperPrimary_TraceRange;
var config float ClassicSniperPrimary_FireRate;
var config float ClassicSniperPrimary_HeadshotDamageMult;
var config float ClassicSniperRifle_PutDownTime;
var config float ClassicSniperRifle_BringUpTime;
var config float ClassicSniperRifle_MinReloadPct;
var config bool bGiveClassicSniperRifle;
var config int ClassicSniperRifleAmmoGiven;

// super shock
var config bool bModifySuperShockRifle;
var config int SuperShockPrimary_TraceRange;
var config float SuperShockPrimary_Momentum;
var config int SuperShockPrimary_AmmoPerFire;
var config int SuperShockPrimary_DamageMin;
var config int SuperShockPrimary_DamageMax;
var config float SuperShockPrimary_FireRate;
var config float SuperShockRifle_PutDownTime;
var config float SuperShockRifle_BringUpTime;
var config float SuperShockRifle_MinReloadPct;
var config bool bGiveSuperShock;
var config int SuperShockAmmoGiven;

// ONS Grenade Launcher
var config bool bModifyONSGrenadeLauncher;
var config int ONSGrenadePrimary_AmmoPerFire;
var config float ONSGrenadePrimary_FireRate;
var config bool ONSGrenadeProj_bBounce;
var config float ONSGrenadeProj_Speed;
var config float ONSGrenadeProj_MaxSpeed;
var config float ONSGrenadeProj_TossZ;
var config float ONSGrenadeProj_Damage;
var config float ONSGrenadeProj_DamageRadius;
var config float ONSGrenadeProj_MomentumTransfer;
var config float ONSGrenadeProj_CullDistance;
var config float ONSGrenadeProj_LifeSpan;
var config float ONSGrenadeProj_DampenFactor;
var config float ONSGrenadeProj_DampenFactorParallel;
var config float ONSGrenadeLauncher_PutDownTime;
var config float ONSGrenadeLauncher_BringUpTime;
var config float ONSGrenadeLauncher_MinReloadPct;
var config bool bGiveONSGrenade;
var config int ONSGrenadeAmmoGiven;

// ONS Avril
var config bool bModifyONSAvril;
var config float ONSAvril_LockCheckFreq;
var config float ONSAvril_MaxLockRange;
var config float ONSAvril_LockAim;
var config float ONSAvril_PutDownTime;
var config float ONSAvril_BringUpTime;
var config float ONSAvril_MinReloadPct;
var config int ONSAvrilPrimary_AmmoPerFire;
var config float ONSAvrilPrimary_FireRate;
var config vector ONSAvrilPrimary_KickMomentum;
var config float ONSAvrilProj_LeadTargetDelay;
var config bool ONSAvrilProj_bProjTarget;
var config float ONSAvrilProj_Speed;
var config float ONSAvrilProj_MaxSpeed;
var config float ONSAvrilProj_Damage;
var config float ONSAvrilProj_DamageRadius;
var config float ONSAvrilProj_MomentumTransfer;
var config float ONSAvrilProj_LifeSpan;
var config bool bGiveONSAvril;
var config int ONSAvrilAmmoGiven;

// ONS mine layer
var config bool bModifyONSMineLayer;
var config float ONSMineLayer_ReloadDelay;
var config int ONSMineLayer_MaxMines;
var config float ONSMineLayer_PutDownTime;
var config float ONSMineLayer_BringUpTime;
var config float ONSMineLayer_MinReloadPct;
var config int ONSMineLayerPrimary_AmmoPerFire;
var config float ONSMineLayerPrimary_FireRate;
var config float ONSMineProjectile_DetectionTimer;
var config float ONSMineProjectile_ScurrySpeed;
var config float ONSMineProjectile_ScurryAnimRate;
var config int ONSMineProjectile_TargetLocFuzz;
var config float ONSMineProjectile_Speed;
var config float ONSMineProjectile_MaxSpeed;
var config float ONSMineProjectile_Damage;
var config float ONSMineProjectile_DamageRadius;
var config float ONSMineProjectile_CullDistance;
var config float ONSMineProjectile_MomentumTransfer;
var config bool ONSMineProjectile_bBounce;
var config bool bGiveONSMineLayer;
var config int ONSMineLayerAmmoGiven;

function PostBeginPlay()
{
    local WeaponConfigInfo weaponConfig;
    local WeaponConfigRules weaponRules;
    local string Url;

    super.PostBeginPlay();
    Url = Level.GetLocalURL();
    Url = Mid(Url, InStr(Url, "?"));
    ParseUrl(Url);

    // do nothing if not enabled
    if(!bModifyWeapons)
        return;

    // load config and modify weapons server side
    weaponConfig = spawn(class'WeaponConfigInfo');
    weaponConfig.LoadFrom(self);
    weaponConfig.Modify();
    weaponConfig.Destroy();

    // load game rules to configure weapons client side
    weaponRules = spawn(class'WeaponConfigRules');
    weaponRules.Config = self;

	if ( Level.Game.GameRulesModifiers == None )
		Level.Game.GameRulesModifiers = weaponRules;
	else    
		Level.Game.GameRulesModifiers.AddGameRules(weaponRules);
}

function ParseURL(string Url)
{
   local array<string> Parts;
   local int i;

   local string ModifyWeapons;

   Split(Url, "?", Parts);

   for(i=0; i<Parts.Length; i++)
   {
       if(Parts[i]!="")
       {
           if(Left(Parts[i],Len("ModifyWeapons"))~= "ModifyWeapons")
               ModifyWeapons=Right(Parts[i], Len(Parts[i])-Len("ModifyWeapons")-1);
       }
   }
   if(ModifyWeapons !="" && (ModifyWeapons~="False" || ModifyWeapons~="True"))
   {
       default.bModifyWeapons = ModifyWeapons~="True";
       bModifyWeapons = default.bModifyWeapons;
   }
}

static function FillPlayInfo(PlayInfo PI)
{
    local byte Weight; 

    Super.FillPlayInfo(PI);
    Weight = 1;

    // global 
    PI.AddSetting("UTComp Weapon Config", "bModifyWeapons", "Modify Weapons (false)", 0, Weight++, "Check");

    // shield gun
    PI.AddSetting("UTComp Weapon Config", "bModifyShieldGun", "Modify the Shield Gun (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ShieldGun_PutDownTime", "Shield Gun Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldGun_BringUpTime", "Shield Gun Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldGun_MinReloadPct", "Shield Gun MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_FireRate", "Shield Primary Fire Rate (0.6)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_AmmoPerFire", "Shield Primary Ammo Per Fire (0)", 0, Weight++, "Text", "8;0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_ShieldRange", "Shield Primary Shield Range (112.0)", 0, Weight++, "Text", "8;0.0:20000.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_MinHoldTime", "Shield Primary Min Hold Time (0.4)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_MinForce", "Shield Primary Min Force (65000.0)", 0, Weight++, "Text", "9;-10000000.0:10000000.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_MaxForce", "Shield Primary Max Force (100000.0)", 0, Weight++, "Text", "9;-10000000.0:10000000.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_SelfForceScale", "Shield Primary Self Force Scale (1.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_SelfDamageScale", "Shield Primary Self Damage Scale (0.3)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_MinSelfDamage", "Shield Primary Minimum Self Damage (8)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_AutoFireTestFreq", "Shield Primary Auto Fire Test Frequency (0.15)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_FullyChargedTime", "Shield Primary Fully Charged Time (2.5)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShieldPrimary_ChargingSoundVolume", "Shield Primary Charging Sound Volume (200)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShieldSecondary_FireRate", "Shield Secondary Fire Rate (1.0)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldSecondary_AmmoPerFire", "Shield Secondary Ammo Per Fire (15)", 0, Weight++, "Text", "8;0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldSecondary_AmmoRegenTime", "Shield Secondary Ammo Regen Time (0.2)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldSecondary_ChargeupTime", "Shield Secondary Chargeup Time (3.0)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShieldSecondary_ShieldSoundVolume", "Shield Secondary Sound Volume (220)", 0, Weight++, "Text", "4;0:1000");

    // assault rifle
    PI.AddSetting("UTComp Weapon Config", "bModifyAssaultRifle", "Modify the Assault Rifle (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_PutDownTime", "Assault Rifle Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_BringUpTime", "Assault Rifle Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_MinReloadPct", "Assault Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_bDualMode", "Assault Rifle Dual Mode (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_TraceRange", "Assault Primary Trace Range (10000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_Momentum", "Assault Primary Momentum (0.0)", 0, Weight++, "Text", "9;-10000000.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_AmmoPerFire", "Assault Primary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_DamageMin", "Assault Primary Damage Min (7)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_DamageMax", "Assault Primary Damage Max (7)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_FireRate", "Assault Primary Fire Rate (0.16)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_AimError", "Assault Primary Aim Error (800)", 0, Weight++, "Text", "4;0:9999");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_Spread", "Assault Primary Spread (0.02)", 0, Weight++, "Text", "4;0.0:1000");

    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_DamageAtten", "Assault Secondary Damage Atten (1.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mScale", "Assault Secondary mScale (1.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mScaleMultiplier", "Assault Secondary mScaleMultiplier (0.9)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mSpeedMin", "Assault Secondary mSpeedMin (250)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mSpeedMax", "Assault Secondary mSpeedMax (3000)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mHoldSpeedMin", "Assault Secondary mHoldSpeedMin (850.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mHoldSpeedMax", "Assault Secondary mHoldSpeedMax (3000.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mHoldSpeedGainPerSec", "Assault Secondary mHoldSpeedGainPerSec (750.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultSecondary_mWaitTime", "Assault Secondary mWaitTime (0.5)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_ExplodeTimer", "Assault Grenade Explode Timer (2.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_DampenFactor", "Assault Grenade Dampen Factor (0.5)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_DampenFactorParallel", "Assault Grenade Dampen Factor Parallel (0.8)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_TossZ", "Assault Grenade TossZ (0.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_Damage", "Assault Grenade Damage (70.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_DamageRadius", "Assault Grenade Damage Radius (220.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenade_MomentumTransfer", "Assault Grenade Momentum Transfer (75000.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "bModifyAssaultAmmo", "Modify the Assault Rifle Ammo (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifleAmmoGiven", "Assault Rifle Ammo (100)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "AssaultGrenadesGiven", "Assault Rifle Grenades (4)", 0, Weight++, "Text", "8;0:1000");

    // bio
    PI.AddSetting("UTComp Weapon Config", "bModifyBioRifle", "Modify the Bio Rifle (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "BioRifle_PutDownTime", "Bio Rifle Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "BioRifle_BringUpTime", "Bio Rifle Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "BioRifle_MinReloadPct", "Bio Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "BioPrimary_FireRate", "Bio Primary Fire Rate (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "BioPrimary_AmmoPerFire", "Bio Primary Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:999");
    PI.AddSetting("UTComp Weapon Config", "BioSecondary_FireRate", "Bio Secondary Fire Rate  (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "BioSecondary_GoopUpRate", "Bio Secondary Goop Up Rate (0.25)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "BioSecondary_MaxGoopLoad", "Bio Secondary Max Goop Load (10)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjBaseDamage", "Bio Projectile Base Damage (20.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjGloblingSpeed", "Bio Projectile Globling Speed (200.0)", 0, Weight++, "Text", "4;0.0:20000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjRestTime", "Bio Projectile Rest Time (2.25)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjTouchDetinationDelay", "Bio Projectile Touch Detination Delay (0.15)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjDripTime", "Bio Projectile Drip Time (1.8)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjMaxGoopLevel", "Bio Projectile Max Goop Level (5)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "Bio_ProjMergeGlobs", "Bio Projectile Merg Globs (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "bGiveBioRifle", "Give Bio Rifle to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "BioAmmoGiven", "Bio Rifle Ammo Given (20)", 0, Weight++, "Text", "8;0:1000");

    // shock
    PI.AddSetting("UTComp Weapon Config", "bModifyShockRifle", "Modify the Shock Rifle (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ShockRifle_PutDownTime", "Shock Rifle Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShockRifle_BringUpTime", "Shock Rifle Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShockRifle_MinReloadPct", "Shock Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_TraceRange", "Shock Primary Trace Range (17000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_Momentum", "Shock Primary Momentum (60000.0)", 0, Weight++, "Text", "9;-10000000.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_AmmoPerFire", "Shock Primary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_DamageMin", "Shock Primary Damage Min (45)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_DamageMax", "Shock Primary Damage Max (45)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_FireRate", "Shock Primary Fire Rate (0.7)", 0, Weight++, "Text", "4;0.0:1000");

    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_AmmoPerFire", "Shock Secondary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_FireRate", "Shock Secondary Fire Rate (0.6)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjSpeed", "Shock Secondary Projectile Speed (1150)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjMaxSpeed", "Shock Secondary Projectile Max Speed (1150)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjDamage", "Shock Secondary Damage (45)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjDamageRadius", "Shock Secondary Damage Radius (150)", 0, Weight++, "Text", "5;0:10000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjMomentumTransfer", "Shock Secondary Momentum Transfer (70000)", 0, Weight++, "Text", "9;-10000000:10000000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjComboDamage", "Shock Combo Damage (200)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjComboRadius", "Shock Combo Damage Radius (275)", 0, Weight++, "Text", "5;0:10000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjComboMomentumTransfer", "Shock Combo Momentum Transfer (150000)", 0, Weight++, "Text", "9;-10000000:10000000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjLifeSpan", "Shock Secondary Projectile Lifespan (10.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjComboAmmoCost", "Shock Combo Ammo Cost (3)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjForceScale", "Shock Projectile Force Scale (5.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjForceRadius", "Shock Projectile Force Radius (40.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjSoundRadius", "Shock Projectile Sound Radius (100)", 0, Weight++, "Text", "5;0:10000");
    PI.AddSetting("UTComp Weapon Config", "ShockSecondary_ProjSoundVolume", "Shock Projectile Sound Volume (50)", 0, Weight++, "Text", "5;0:10000");
    PI.AddSetting("UTComp Weapon Config", "bGiveShock", "Give Shock Rifle to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ShockAmmoGiven", "Shock Rifle Ammo Given (20)", 0, Weight++, "Text", "8;0:1000");

    // linkgun
    PI.AddSetting("UTComp Weapon Config", "bModifyLinkGun", "Modify the Link Gun (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "LinkPrimary_AmmoPerFire", "Link Primary Ammo Per Fire (2)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "LinkPrimary_FireRate", "Link Primary Fire Rate (0.12)", 0, Weight++, "Text", "8;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_Damage", "Link Projectile Damage (30)", 0, Weight++, "Text", "5;0:10000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_DamageRadius", "Link Projectile Damage Radius (0.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_Speed", "Link Projectile Speed (1000.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_MaxSpeed", "Link Projectile Max Speed (4000.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_MomentumTransfer", "Link Projectile Momentum Transfer (0.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_LifeSpan", "Link Projectile Life Span (3.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkProj_CullDistance", "Link Projectile Cull Distance (3500.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_TraceRange", "Link Secondary Trace Range (1100.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_MomentumTransfer", "Link Secondary Momentum Transfer (2000.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_AmmoPerFire", "Link Secondary Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_Damage", "Link Secondary Damage (9)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_FireRate", "Link Secondary Fire Rate (0.12)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_LinkFlexibility", "Link Secondary Link Flexibility (0.64)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkSecondary_LinkBreakDelay", "Link Secondary Link Break Delay (0.5)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkGun_PutDownTime", "Link Gun Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkGun_BringUpTime", "Link Gun Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "LinkGun_MinReloadPct", "Link Gun MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "bGiveLinkGun", "Give Link Gun to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "LinkGunAmmoGiven", "Link Gun Ammo Given (70)", 0, Weight++, "Text", "8;0:1000");

    // minigun
    PI.AddSetting("UTComp Weapon Config", "bModifyMinigun", "Modify the Minigun (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "Minigun_PutDownTime", "Minigun Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "Minigun_BringUpTime", "Minigun Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "Minigun_MinReloadPct", "Minigun MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_DamageMin", "Minigun Primary Damage Min (7)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_DamageMax", "Minigun Primary Damage Max (8)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_TraceRange", "Minigun Primary Trace Range (10000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_Momentum", "Minigun Primary Momentum (0.0)", 0, Weight++, "Text", "9;-10000000.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_AmmoPerFire", "Minigun Primary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_RoundsPerRotation", "Minigun Primary Rounds Per Rotation (5)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_BarrelRotationsPerSec", "Minigun Primary Barrel Rotations Per Sec (3.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_AimError", "Minigun Primary Aim Error (900)", 0, Weight++, "Text", "4;0:9999");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_Spread", "Minigun Primary Spread (0.08)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_PreFireTime", "Minigun Primary Pre Fire Time (0.27)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunPrimary_WindupTime", "Minigun Primary Windup Time (0.27)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_DamageMin", "Minigun Secondary Damage Min (14)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_DamageMax", "Minigun Secondary Damage Max (16)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_TraceRange", "Minigun Secondary Trace Range (10000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_Momentum", "Minigun Secondary Momentum (0.0)", 0, Weight++, "Text", "9;-10000000.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_AmmoPerFire", "Minigun Secondary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_RoundsPerRotation", "Minigun Secondary Rounds Per Rotation (5)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_BarrelRotationsPerSec", "Minigun Secondary Barrel Rotations Per Sec (1.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_AimError", "Minigun Secondary Aim Error (900)", 0, Weight++, "Text", "4;0:9999");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_Spread", "Minigun Secondary Spread (0.03)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_PreFireTime", "Minigun Secondary Pre Fire Time (0.15)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "MinigunSecondary_WindupTime", "Minigun Secondary Windup Time (0.15)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "bGiveMinigun", "Give Minigun to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "MinigunAmmoGiven", "Minigun Ammo Given (150)", 0, Weight++, "Text", "8;0:1000");

    // flak
    PI.AddSetting("UTComp Weapon Config", "bModifyFlakCannon", "Modify the Flak Cannon (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "FlakPrimary_AmmoPerFire", "Flak Primary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakPrimary_FireRate", "Flak Primary Fire Rate (0.95)", 0, Weight++, "Text", "8;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakPrimary_ProjPerFire", "Flak Primary Projectiles Per Fire (9)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakPrimary_Spread", "Flak Primary Spread (1400)", 0, Weight++, "Text", "8;0:10000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_Bounces", "Flak Chunk Bounces (1)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_DamageAtten", "Flak Chunk Damage Atten (0.5)", 0, Weight++, "Text", "8;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_Speed", "Flak Chunk Speed (2500)", 0, Weight++, "Text", "8;0.0:100000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_MaxSpeed", "Flak Chunk Max Speed (2700)", 0, Weight++, "Text", "8;0.0:100000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_Damage", "Flak Chunk Damage (13)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_MomentumTransfer", "Flak Chunk Momentum Transfer (10000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_CullDistance", "Flak Chunk Cull Distance (3000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_LifeSpan", "Flak Chunk Life Span (2.7)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "FlakChunk_Bounce", "Flak Chunk Bounce (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "FlakSecondary_AmmoPerFire", "Flak Secondary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakSecondary_FireRate", "Flak Secondary Fire Rate (1.11)", 0, Weight++, "Text", "8;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakSecondary_ProjPerFire", "Flak Secondary Projectiles Per Fire (1)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakSecondary_Spread", "Flak Secondary Spread (0)", 0, Weight++, "Text", "8;0:10000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_TossZ", "Flak Shell Toss Z (225.0)", 0, Weight++, "Text", "8;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_Speed", "Flak Shell Speed (1200.0)", 0, Weight++, "Text", "8;0.0:100000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_MaxSpeed", "Flak Shell Max Speed (1200.0)", 0, Weight++, "Text", "8;0.0:100000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_Damage", "Flak Shell Damage (90)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_DamageRadius", "Flak Shell Damage Radius (220.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_MomentumTransfer", "Flak Shell Momentum Transfer (75000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_CullDistance", "Flak Shell Cull Distance (4000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "FlakShell_LifeSpan", "Flak Shell Life Span (6.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "FlakCannon_PutDownTime", "FlakCannon Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "FlakCannon_BringUpTime", "FlakCannon Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "FlakCannon_MinReloadPct", "FlakCannon MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "bGiveFlakCannon", "Give Flak Cannon to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "FlakCannonAmmoGiven", "Flak Cannon Ammo Given (15)", 0, Weight++, "Text", "8;0:1000");

    // rocket launcher
    PI.AddSetting("UTComp Weapon Config", "bModifyRocketLauncher", "Modify the Rocket Launcher (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_PutDownTime", "Rocket Launcher Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_BringUpTime", "Rocket Launcher Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_MinReloadPct", "Rocket Launcher MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_SeekCheckFreq", "Rocket Launcher Seek Check Freq (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_SeekRange", "Rocket Launcher Seek Range (8000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_LockRequiredTime", "Rocket Launcher Lock Required Time (1.25)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_UnLockRequiredTime", "Rocket Launcher Unlock Required Time (0.5)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncher_LockAim", "Rocket Launcher Lock Aim (0.996)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketPrimary_FireRate", "Rocket Primary Fire Rate (0.9)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketPrimary_AmmoPerFire", "Rocket Primary Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketSecondary_FireRate", "Rocket Secondary Fire Rate (0.95)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketSecondary_AmmoPerFire", "Rocket Secondary Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketSecondary_TightSpread", "Rocket Secondary Tight Spread (300.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketSecondary_LooseSpread", "Rocket Secondary Loose Spread (1000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketSecondary_MaxLoad", "Rocket Secondary Max Load (3)", 0, Weight++, "Text", "8;0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketSecondary_MaxHoldTime", "Rocket Secondary Max Hold Time (2.3)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_Speed", "Rocket Projectile Speed (1350.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_MaxSpeed", "Rocket Projectile Max Speed (1350.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_Damage", "Rocket Projectile Damage (90)", 0, Weight++, "Text", "8;0:1000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_DamageRadius", "Rocket Projectile Damage Radius (220.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_MomentumTransfer", "Rocket Projectile Momentum Transfer (50000.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_Lifespan", "Rocket Projectile Lifespan (8.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_FlockRadius", "Rocket Projectile Flock Radius (12.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_FlockStiffness", "Rocket Projectile Flock Stiffness (40.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_FlockMaxForce", "Rocket Projectile Flock Max Force (600.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "RocketProj_FlockCurlForce", "Rocket Projectile Flock Curl Force (450.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "bGiveRocketLauncher", "Give Rocket Launcher to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "RocketLauncherAmmoGiven", "Rocket Launcher Ammo Given (12)", 0, Weight++, "Text", "8;0:1000");

    // lightning gun
    PI.AddSetting("UTComp Weapon Config", "bModifySniperRifle", "Modify the Lightning Gun (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "SniperRifle_PutDownTime", "Lightning Gun Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SniperRifle_BringUpTime", "Lightning Gun Bring Up Time (0.36)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SniperRifle_MinReloadPct", "Ligtning Gun MinReloadPct (0.25)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_AmmoPerFire", "Lightning Gun Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_DamageMin", "Lightning Gun Damage Min (70)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_DamageMax", "Lightning Gun Damage Max (70)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_TraceRange", "Lightning Gun Trace Range (17000)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_FireRate", "Lightning Gun Fire Rate (1.6)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_NumArcs", "Lightning Gun Num Arcs (3)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_SecDamageMult", "Lightning Gun Arc Damage Multiplier (0.5)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_SecTraceDist", "Lightning Gun Arc Trace Distance (300)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_HeadshotDamageMult", "Lightning Gun Headshot Multiplier (2.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "bGiveSniperRifle", "Give Lightning Gun to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "SniperRifleAmmoGiven", "Lightning Gun Ammo Given (15)", 0, Weight++, "Text", "8;0:1000");

    // classic sniper rifle
    PI.AddSetting("UTComp Weapon Config", "bModifyClassicSniperRifle", "Modify the Sniper Rifle (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperRifle_PutDownTime", "Sniper Rifle Put Down Time (0.58)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperRifle_BringUpTime", "Sniper Rifle Bring Up Time (0.6)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperRifle_MinReloadPct", "Sniper Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperPrimary_AmmoPerFire", "Sniper Rifle Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperPrimary_DamageMin", "Sniper Rifle Damage Min (60)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperPrimary_DamageMax", "Sniper Rifle Damage Max (60)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperPrimary_TraceRange", "Sniper Rifle Trace Range (17000)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperPrimary_FireRate", "Sniper Rifle Fire Rate (1.33)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperPrimary_HeadshotDamageMult", "Sniper Rifle Headshot Multiplier (2.0)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "bGiveClassicSniperRifle", "Give Sniper Rifle to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ClassicSniperRifleAmmoGiven", "Sniper Rifle Ammo Given (15)", 0, Weight++, "Text", "8;0:1000");

    // super shock
    PI.AddSetting("UTComp Weapon Config", "bModifySuperShockRifle", "Modify the Super Shock Rifle (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "SuperShockRifle_PutDownTime", "Super Shock Rifle Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SuperShockRifle_BringUpTime", "Super Shock Rifle Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SuperShockRifle_MinReloadPct", "Super Shock Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SuperShockPrimary_TraceRange", "Super Shock Primary Trace Range (17000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "SuperShockPrimary_Momentum", "Super Shock Primary Momentum (60000.0)", 0, Weight++, "Text", "9;-10000000.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "SuperShockPrimary_AmmoPerFire", "Super Shock Primary Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SuperShockPrimary_DamageMin", "Super Shock Primary Damage Min (45)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SuperShockPrimary_DamageMax", "Super Shock Primary Damage Max (45)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SuperShockPrimary_FireRate", "Super Shock Primary Fire Rate (0.7)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "bGiveSuperShock", "Give Super Shock Rifle to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "SuperShockAmmoGiven", "Super Shock Rifle Ammo Given (20)", 0, Weight++, "Text", "8;0:1000");

    // ONS Grenade Launcher
    PI.AddSetting("UTComp Weapon Config", "bModifyONSGrenadeLauncher", "Modify the ONS Grenade Launcher (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenade_PutDownTime", "ONS Grenade Launcher Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenade_BringUpTime", "ONS Grenade Launcher Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenade_MinReloadPct", "ONS Grenade Launcher MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadePrimary_FireRate", "ONS Grenade Primary Fire Rate (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadePrimary_AmmoPerFire", "ONS Grenade Primary Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:999");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_bBounce", "ONS Grenade Bounce (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_Speed", "ONS Grenade Speed (1200.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_MaxSpeed", "ONS Grenade Max Speed (1200.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_TossZ", "ONS Grenade TossZ (0.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_Damage", "ONS Grenade Damage (100.0)", 0, Weight++, "Text", "5;0.0:10000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_DamageRadius", "ONS Grenade Damage Radius (175.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_MomentumTransfer", "ONS Grenade Momentum Transfer (50000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_CullDistance", "ONS Grenade Cull Distance (5000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_LifeSpan", "ONS Grenade Life Span (0.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_DampenFactor", "ONS Grenade Dampen Factor (0.5)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeProj_DampenFactor", "ONS Grenade Dampen Factor Parallel (0.8)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "bGiveONSGrenade", "Give ONS Grenade Launcher to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSGrenadeAmmoGiven", "ONS Grenade Launcher Ammo Given (10)", 0, Weight++, "Text", "8;0:1000");

    // ONS Avril Launcher
    PI.AddSetting("UTComp Weapon Config", "bModifyONSAvril", "Modify the ONS Avril Launcher (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSAvril_LockCheckFreq", "ONS Avril Launcher Lock Check Freq (0.2)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvril_MaxLockRange", "ONS Avril Launcher Max Lock Range (15000.0)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvril_LockAim", "ONS Avril Launcher Lock Aim (0.996)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvril_PutDownTime", "ONS Avril Launcher Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvril_BringUpTime", "ONS Avril Launcher Bring Up Time (0.45)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvril_MinReloadPct", "ONS Avril Launcher MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilPrimary_AmmoPerFire", "ONS Avril Primary Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:999");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilPrimary_FireRate", "ONS Avril Primary Fire Rate (4.0)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilPrimary_KickMomentum", "ONS Avril Primary Kick Momentum ((X=-350.0,Z=175.0))", 0, Weight++, "Text");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilPrimary_LeadTargetDelay", "ONS Avril Lead Target Delay (1.0)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_bProjTarget", "ONS Avril Projectile Target (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_Speed", "ONS Avril Speed (550.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_MaxSpeed", "ONS Avril Max Speed (2800.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_Damage", "ONS Avril Damage (125.0)", 0, Weight++, "Text", "5;0.0:10000");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_DamageRadius", "ONS Avril Damage Radius (150.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_MomentumTransfer", "ONS Avril Momentum Transfer (50000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilProj_LifeSpan", "ONS Avril Life Span (7.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "bGiveONSAvril", "Give ONS Avril Launcher to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSAvrilAmmoGiven", "ONS Avril Launcher Ammo Given (5)", 0, Weight++, "Text", "8;0:1000");

    // ONS Mine Layer
    PI.AddSetting("UTComp Weapon Config", "bModifyONSMineLayer", "Modify the ONS Mine Layer (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayer_ReloadDelay", "ONS Mine Layer Lock Check Freq (0.2)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayer_MaxMines", "ONS Mine Layer Max Mines (8)", 0, Weight++, "Text", "8;0:999");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayer_PutDownTime", "ONS Mine Layer Put Down Time (0.40)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayer_BringUpTime", "ONS Mine Layer Bring Up Time (0.35)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayer_MinReloadPct", "ONS Mine Layer MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayerPrimary_AmmoPerFire", "ONS Mine Layer Ammo Per Fire (1)", 0, Weight++, "Text", "8;0:999");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayerPrimary_FireRate", "ONSMineProjectile_CullDistance Mine Layer Fire Rate (4.0)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_DetectionTimer", "ONS Mine Detection Timer (0.5)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_ScurrySpeed", "ONS Mine Scurry Speed (525.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_ScurryAnimRate", "ONS Mine Scurry Anim Rate (4.1)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_TargetLocFuzz", "ONS Mine Target Lock Fuzz (250)", 0, Weight++, "Text", "8;0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_bBounce", "ONS Mine Bounce (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_Speed", "ONS Mine Speed (800.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_MaxSpeed", "ONS Mine Max Speed (2800.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_Damage", "ONS Mine Damage (95.0)", 0, Weight++, "Text", "5;0.0:10000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_DamageRadius", "ONS Mine Damage Radius (250.0)", 0, Weight++, "Text", "8;0.0:10000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_MomentumTransfer", "ONS Mine Momentum Transfer (50000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "ONSMineProjectile_CullDistance", "ONS Mine Cull Distance (6000.0)", 0, Weight++, "Text", "8;0.0:1000000");
    PI.AddSetting("UTComp Weapon Config", "bGiveONSMineLayer", "Give ONS Mine Layer to Player (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ONSMineLayerAmmoGiven", "ONS Mine Layer Ammo Given (4)", 0, Weight++, "Text", "8;0:1000");

}

static event string GetDescriptionText(string PropName)
{
    switch(PropName)
    {
        case "bModifyWeapons": return "Modify Weapons (false)";
        case "bModifyShieldGun": return "Modify the Shield Gun (false)";
        case "ShieldGun_PutDownTime": return "Shield Gun Put Down Time (0.33)";
        case "ShieldGun_BringUpTime": return "Shield Gun Bring Up Time (0.33)";
        case "ShieldGun_MinReloadPct": return "Shield Gun MinReloadPct (0.5)";
        case "ShieldPrimary_FireRate": return "Shield Primary Fire Rate (0.6)";
        case "ShieldPrimary_AmmoPerFire": return "Shield Primary Ammo Per Fire (0)";
        case "ShieldPrimary_ShieldRange": return "Shield Primary Shield Range (112.0)";
        case "ShieldPrimary_MinHoldTime": return "Shield Primary Min Hold Time (0.4)";
        case "ShieldPrimary_MinForce": return "Shield Primary Min Force (65000.0)";
        case "ShieldPrimary_MaxForce": return "Shield Primary Max Force (100000.0)";
        case "ShieldPrimary_SelfForceScale": return "Shield Primary Self Force Scale (1.0)";
        case "ShieldPrimary_SelfDamageScale": return "Shield Primary Self Damage Scale (0.3)";
        case "ShieldPrimary_MinSelfDamage": return "Shield Primary Min Self Damage (8)";
        case "ShieldPrimary_AutoFireTestFreq": return "Shield Primary Auto Fire Test Frequency (0.15)";
        case "ShieldPrimary_FullyChargedTime": return "Shield Primary Fully Charged Time (2.5)";
        case "ShieldPrimary_ChargingSoundVolume": return "Shield Primary Charging Sound Volume (200)";
        case "ShieldSecondary_FireRate": return "Shield Secondary Fire Rate (1.0)";
        case "ShieldSecondary_AmmoPerFire": return "Shield Secondary Ammo Per Fire (15)";
        case "ShieldSecondary_AmmoRegenTime": return "Shield Secondary Ammo Regen Time (0.2)";
        case "ShieldSecondary_ChargeupTime": return "Shield Secondary Chargeup Time (3.0)";
        case "ShieldSecondary_ShieldSoundVolume": return "Shield Secondary Shield Sound Volume (220)";

        case "bModifyAssaultRifle": return "Modify the Assault Rifle (false)";
        case "AssaultRifle_PutDownTime": return "Assault Rifle Put Down Time (0.33)";
        case "AssaultRifle_BringUpTime": return "Assault Rifle Bring Up Time (0.33)";
        case "AssaultRifle_MinReloadPct": return "Assault Rifle MinReloadPct (0.5)";
        case "AssaultRifle_bDualMode": return "Assault Rifle Dual Mode (false)";
        case "AssaultPrimary_TraceRange": return "Assault Primary Trace Range (10000)";
        case "AssaultPrimary_Momentum": return "Assault Primary Momentum (0.0)";
        case "AssaultPrimary_AmmoPerFire": return "Assault Primary Ammo Per Fire (1)";
        case "AssaultPrimary_DamageMin": return "Assault Primary Damage Min (7)";
        case "AssaultPrimary_DamageMax": return "Assault Primary Damage Max (7)";
        case "AssaultPrimary_FireRate": return "Assault Primary Fire Rate (0.16)";
        case "AssaultPrimary_AimError": return "Assault Primary Aim Error (800)";
        case "AssaultPrimary_Spread": return "Assault Primary Spread (0.02)";
        case "AssaultSecondary_DamageAtten": return "Assault Secondary Damage Atten (1.0)";
        case "AssaultSecondary_mScale": return "Assault Secondary mScale (1.0)";
        case "AssaultSecondary_mScaleMultiplier": return "Assault Secondary mScaleMultiplier (0.9)";
        case "AssaultSecondary_mSpeedMin": return "Assault Secondary mSpeedMin (250)";
        case "AssaultSecondary_mSpeedMax": return "Assault Secondary mSpeedMax (3000)";
        case "AssaultSecondary_mHoldSpeedMin": return "Assault Secondary mHoldSpeedMin (850.0)";
        case "AssaultSecondary_mHoldSpeedMax": return "Assault Secondary mHoldSpeedMax (3000.0)";
        case "AssaultSecondary_mHoldSpeedGainPerSec": return "Assault Secondary mHoldSpeedGainPerSec (750.0)";
        case "AssaultSecondary_mWaitTime": return "Assault Secondary mWaitTime (0.5)";
        case "AssaultGrenade_ExplodeTimer": return "Assault Grenade Explode Timer (2.0)";
        case "AssaultGrenade_DampenFactor": return "Assault Grenade Dampen Factor (0.5)";
        case "AssaultGrenade_DampenFactorParallel": return "Assault Grenade Dampen Factor Parallel (0.8)";
        case "AssaultGrenade_TossZ": return "Assault Grenade TossZ (0.0)";
        case "AssaultGrenade_Damage": return "Assault Grenade Damage (70.0)";
        case "AssaultGrenade_DamageRadius": return "Assault Grenade Damage Radius (220.0)";
        case "AssaultGrenade_MomentumTransfer": return "Assault Grenade Momentum Transfer (75000.0)";
        case "bModifyAssaultAmmo": return "Modify the Assault Rifle Ammo (false)";
        case "AssaultRifleAmmoGiven": return "Assault Rifle Ammo (100)";
        case "AssaultGrenadesGiven": return "Assault Rifle Grenades (4)";

        case "bModifyBioRifle": return "Modify the Bio Rifle (false)"; 
        case "BioRifle_PutDownTime": return "Bio Rifle Put Down Time (0.33)";
        case "BioRifle_BringUpTime": return "Bio Rifle Bring Up Time (0.33)";
        case "BioRifle_MinReloadPct": return "Bio Rifle MinReloadPct (0.5)";
        case "BioPrimary_FireRate": return "Bio Primary Fire Rate (0.33)"; 
        case "BioPrimary_AmmoPerFire": return "Bio Primary Ammo Per Fire (1)"; 
        case "BioSecondary_FireRate": return "Bio Secondary Fire Rate  (0.33)"; 
        case "BioSecondary_GoopUpRate": return "Bio Secondary Goop Up Rate (0.25)"; 
        case "BioSecondary_MaxGoopLoad": return "Bio Secondary Max Goop Load (10)"; 
        case "Bio_ProjBaseDamage": return "Bio Projectile Base Damage (20.0)"; 
        case "Bio_ProjGloblingSpeed": return "Bio Projectile Globling Speed (200.0)"; 
        case "Bio_ProjRestTime": return "Bio Projectile Rest Time (2.25)"; 
        case "Bio_ProjTouchDetinationDelay": return "Bio Projectile Touch Detination Delay (0.15)"; 
        case "Bio_ProjDripTime": return "Bio Projectile Drip Time (1.8)"; 
        case "Bio_ProjMaxGoopLevel": return "Bio Projectile Max Goop Level (5)"; 
        case "Bio_ProjMergeGlobs": return "Bio Projectile Merg Globs (true)"; 
        case "bGiveBioRifle": return "Give Bio Rifle to Player (false)";
        case "BioAmmoGiven": return "Bio Rifle Ammo Given (20)";

        case "bModifyShockRifle": return "Modify the Shock Rifle (false)";
        case "ShockRifle_PutDownTime": return "Shock Rifle Put Down Time (0.33)";
        case "ShockRifle_BringUpTime": return "Shock Rifle Bring Up Time (0.33)";
        case "ShockRifle_MinReloadPct": return "Shock Rifle MinReloadPct (0.5)";
        case "ShockPrimary_TraceRange": return "Shock primary trace range (17000)";
        case "ShockPrimary_Momentum": return "Shock Primary Momentum (60000.0)";
        case "ShockPrimary_AmmoPerFire": return "Shock Primary Ammo Per Fire (1)";
        case "ShockPrimary_DamageMin": return "Shock Primary Damage Min (45)";
        case "ShockPrimary_DamageMax": return "Shock Primary Damage Max (45)";
        case "ShockPrimary_FireRate": return "Shock Primary Fire Rate (0.7)";
        case "ShockSecondary_AmmoPerFire": return "Shock Secondary Ammo Per Fire (1)";
        case "ShockSecondary_FireRate": return "Shock Secondary Fire Rate (0.6)";
        case "ShockSecondary_ProjSpeed": return "Shock Secondary Projectile Speed (1150)";
        case "ShockSecondary_ProjMaxSpeed": return "Shock Secondary Projectile Max Speed (1150)";
        case "ShockSecondary_ProjDamage": return "Shock Secondary Damage (45)";
        case "ShockSecondary_ProjDamageRadius": return "Shock Secondary Damage Radius (150)";
        case "ShockSecondary_ProjMomentumTransfer": return "Shock Secondary Momentum Transfer (70000)";
        case "ShockSecondary_ProjComboDamage": return "Shock Combo Damage (200)";
        case "ShockSecondary_ProjComboRadius": return "Shock Combo Damage Radius (275)";
        case "ShockSecondary_ProjComboMomentumTransfer": return "Shock Combo Momentum Transfer (150000)";
        case "ShockSecondary_ProjLifeSpan": return "Shock Secondary Projectile Lifespan (10.0)";
        case "ShockSecondary_ProjComboAmmoCost": return "Shock Combo Ammo Cost (3)";
        case "ShockSecondary_ProjForceScale": return "Shock Projectile Force Scale (5.0)";
        case "ShockSecondary_ProjForceRadius": return "Shock Projectile Force Radius (40.0)";
        case "ShockSecondary_ProjSoundRadius": return "Shock Projectile Sound Radius (100)";
        case "ShockSecondary_ProjSoundVolume": return "Shock Projectile Sound Volume (50)";
        case "bGiveShock": return "Give Shock Rifle to Player (false)";
        case "ShockAmmoGiven": return "Shock Rifle Ammo Given (20)";

        case "bModifyLinkGun": return "Modify the Link Gun (false)";
        case "LinkPrimary_AmmoPerFire": return "Link Primary Ammo Per Fire (2)";
        case "LinkPrimary_FireRate": return "Link Primary Fire Rate (0.12)";
        case "LinkProj_Damage": return "Link Projectile Damage (30)";
        case "LinkProj_DamageRadius": return "Link Projectile Damage Radius (0.0)";
        case "LinkProj_Speed": return "Link Projectile Speed (1000.0)";
        case "LinkProj_MaxSpeed": return "Link Projectile Max Speed (4000.0)";
        case "LinkProj_MomentumTransfer": return "Link Projectile Momentum Transfer (0.0)";
        case "LinkProj_LifeSpan": return "Link Projectile Life Span (3.0)";
        case "LinkProj_CullDistance": return "Link Projectile Cull Distance (3500.0)";
        case "LinkSecondary_TraceRange": return "Link Secondary Trace Range (1100.0)";
        case "LinkSecondary_MomentumTransfer": return "Link Secondary Momentum (2000.0)";
        case "LinkSecondary_AmmoPerFire": return "Link Secondary Ammo Per Fire (1)";
        case "LinkSecondary_Damage": return "Link Secondary Damage (9)";
        case "LinkSecondary_FireRate": return "Link Secondary Fire Rate (0.12)";
        case "LinkSecondary_LinkFlexibility": return "Link Secondary Link Flexibility (0.64)";
        case "LinkSecondary_LinkBreakDelay": return "Link Secondary Link Break Delay (0.5)";
        case "LinkGun_PutDownTime": return "Link Gun Put Down Time (0.33)";
        case "LinkGun_BringUpTime": return "Link Gun Bring Up Time (0.33)";
        case "LinkGun_MinReloadPct": return "Link Gun MinReloadPct (0.5)";
        case "bGiveLinkGun": return "Give Link Gun to Player (false)";
        case "LinkGunAmmoGiven": return "Link Gun Ammo Given (70)";

        case "bModifyMinigun": return "Modify the Minigun (false)";
        case "Minigun_PutDownTime": return "Minigun Put Down Time (0.33)";
        case "Minigun_BringUpTime": return "Minigun Bring Up Time (0.33)";
        case "Minigun_MinReloadPct": return "Minigun MinReloadPct (0.5)";
        case "MinigunPrimary_DamageMin": return "Minigun Primary Damage Min (7)";
        case "MinigunPrimary_DamageMax": return "Minigun Primary Damage Max (8)";
        case "MinigunPrimary_TraceRange": return "Minigun Primary Trace Range (10000.0)";
        case "MinigunPrimary_Momentum": return "Minigun Primary Momentum (0.0)";
        case "MinigunPrimary_AmmoPerFire": return "Minigun Primary Ammo Per Fire (1)";
        case "MinigunPrimary_RoundsPerRotation": return "Minigun Primary Rounds Per Rotation (5)";
        case "MinigunPrimary_BarrelRotationsPerSec": return "Minigun Primary Barrel Rotations Per Sec (3.0)";
        case "MinigunPrimary_AimError": return "Minigun Primary Aim Error (900)";
        case "MinigunPrimary_Spread": return "Minigun Primary Spread (0.08)";
        case "MinigunPrimary_PreFireTime": return "Minigun Primary Pre Fire Time (0.27)";
        case "MinigunPrimary_WindupTime": return "Minigun Primary Windup Time (0.27)";
        case "MinigunSecondary_DamageMin": return "Minigun Secondary Damage Min (14)";
        case "MinigunSecondary_DamageMax": return "Minigun Secondary Damage Max (16)";
        case "MinigunSecondary_TraceRange": return "Minigun Secondary Trace Range (10000.0)";
        case "MinigunSecondary_Momentum": return "Minigun Secondary Momentum (0.0)";
        case "MinigunSecondary_AmmoPerFire": return "Minigun Secondary Ammo Per Fire (1)";
        case "MinigunSecondary_RoundsPerRotation": return "Minigun Secondary Rounds Per Rotation (5)";
        case "MinigunSecondary_BarrelRotationsPerSec": return "Minigun Secondary Barrel Rotations Per Sec (1.0)";
        case "MinigunSecondary_AimError": return "Minigun Secondary Aim Error (900)";
        case "MinigunSecondary_Spread": return "Minigun Secondary Spread (0.03)";
        case "MinigunSecondary_PreFireTime": return "Minigun Secondary Pre Fire Time (0.15)";
        case "MinigunSecondary_WindupTime": return "Minigun Secondary Windup Time (0.15)";
        case "bGiveMinigun": return "Give Minigun to Player (false)";
        case "MinigunAmmoGiven": return "Minigun Ammo Given (150)";

        case "bModifyFlakCannon": return "Modify the Flak Cannon (false)";
        case "FlakPrimary_AmmoPerFire": return "Flak Primary Ammo Per Fire (1)";
        case "FlakPrimary_FireRate": return "Flak Primary Fire Rate (0.95)";
        case "FlakPrimary_ProjPerFire": return "Flak Primary Projectiles Per Fire (9)";
        case "FlakPrimary_Spread": return "Flak Primary Spread (1400)";
        case "FlakChunk_Bounces": return "Flak Chunk Bounces (1)";
        case "FlakChunk_DamageAtten": return "Flak Chunk Damage Atten (0.5)";
        case "FlakChunk_Speed": return "Flak Chunk Speed (2500)";
        case "FlakChunk_MaxSpeed": return "Flak Chunk Max Speed (2700)";
        case "FlakChunk_Damage": return "Flak Chunk Damage (13)";
        case "FlakChunk_MomentumTransfer": return "Flak Chunk Momentum Transfer (10000.0)";
        case "FlakChunk_CullDistance": return "Flak Chunk Cull Distance (3000.0)";
        case "FlakChunk_LifeSpan": return "Flak Chunk Life Span (2.7)";
        case "FlakChunk_Bounce": return "Flak Chunk Bounce (true)";
        case "FlakSecondary_AmmoPerFire": return "Flak Secondary Ammo Per Fire (1)";
        case "FlakSecondary_FireRate": return "Flak Secondary Fire Rate (1.11)";
        case "FlakSecondary_ProjPerFire": return "Flak Secondary Projectiles Per Fire (1)";
        case "FlakSecondary_Spread": return "Flak Secondary Spread (0)";
        case "FlakShell_TossZ": return "Flak Shell Toss Z (225.0)";
        case "FlakShell_Speed": return "Flak Shell Speed (1200.0)";
        case "FlakShell_MaxSpeed": return "Flak Shell Max Speed (1200.0)";
        case "FlakShell_Damage": return "Flak Shell Damage (90)";
        case "FlakShell_DamageRadius": return "Flak Shell Damage Radius (220.0)";
        case "FlakShell_MomentumTransfer": return "Flak Shell Momentum Transfer (75000.0)";
        case "FlakShell_CullDistance": return "Flak Shell Cull Distance (4000.0)";
        case "FlakShell_LifeSpan": return "Flak Shell Life Span (6.0)";
        case "FlakCannon_PutDownTime": return "FlakCannon Put Down Time (0.33)";
        case "FlakCannon_BringUpTime": return "FlakCannon Bring Up Time (0.33)";
        case "FlakCannon_MinReloadPct": return "FlakCannon MinReloadPct (0.5)";
        case "bGiveFlakCannon": return "Give Flak Cannon to Player (false)";
        case "FlakCannonAmmoGiven": return "Flak Cannon Ammo Given (15)";

        case "bModifyRocketLauncher": return "Modify the Rocket Launcher (false)";
        case "RocketLauncher_PutDownTime": return "Rocket Launcher Put Down Time (0.33)";
        case "RocketLauncher_BringUpTime": return "Rocket Launcher Bring Up Time (0.33)";
        case "RocketLauncher_MinReloadPct": return "Rocket Launcher MinReloadPct (0.5)";
        case "RocketLauncher_SeekCheckFreq": return "Rocket Launcher Seek Check Freq (0.5)";
        case "RocketLauncher_SeekRange": return "Rocket Launcher Seek Range (8000.0)";
        case "RocketLauncher_LockRequiredTime": return "Rocket Launcher Lock Required Time (1.25)";
        case "RocketLauncher_UnLockRequiredTime": return "Rocket Launcher Unlock Required Time (0.5)";
        case "RocketLauncher_LockAim": return "Rocket Launcher Lock Aim (0.996)";
        case "RocketPrimary_FireRate": return "Rocket Primary Fire Rate (0.9)";
        case "RocketPrimary_AmmoPerFire": return "Rocket Primary Ammo Per Fire (1)";
        case "RocketSecondary_FireRate": return "Rocket Secondary Fire Rate (0.95)";
        case "RocketSecondary_AmmoPerFire": return "Rocket Secondary Ammo Per Fire (1)";
        case "RocketSecondary_TightSpread": return "Rocket Secondary Tight Spread (300.0)";
        case "RocketSecondary_LooseSpread": return "Rocket Secondary Loose Spread (1000.0)";
        case "RocketSecondary_MaxLoad": return "Rocket Secondary Max Load (3)";
        case "RocketSecondary_MaxHoldTime": return "Rocket Secondary Max Hold Time (2.3)";
        case "RocketProj_Speed": return "Rocket Projectile Speed (1350.0)";
        case "RocketProj_MaxSpeed": return "Rocket Projectile Max Speed (1350.0)";
        case "RocketProj_Damage": return "Rocket Projectile Damage (90)";
        case "RocketProj_DamageRadius": return "Rocket Projectile Damage Radius (220.0)";
        case "RocketProj_MomentumTransfer": return "Rocket Projectile Momentum Transfer (50000.0)";
        case "RocketProj_Lifespan": return "Rocket Projectile Lifespan (8.0)";
        case "RocketProj_FlockRadius": return "Rocket Projectile Flock Radius (12.0)";
        case "RocketProj_FlockStiffness": return "Rocket Projectile Flock Stiffness (40.0)";
        case "RocketProj_FlockMaxForce": return "Rocket Projectile Flock Max Force (600.0)";
        case "RocketProj_FlockCurlForce": return "Rocket Projectile Flock Curl Force (450.0)";
        case "bGiveRocketLauncher": return "Give Rocket Launcher to Player (false)";
        case "RocketLauncherAmmoGiven": return "Rocket Launcher Ammo Given (12)";

        case "bModifySniperRifle": return "Modify the Lightning Gun (false)";
        case "SniperRifle_PutDownTime": return "Sniper Rifle Put Down Time (0.33)";
        case "SniperRifle_BringUpTime": return "Sniper Rifle Bring Up Time (0.36)";
        case "SniperRifle_MinReloadPct": return "Sniper Rifle MinReloadPct (0.25)";
        case "SniperPrimary_AmmoPerFire": return "Lightning Gun Ammo Per Fire (1)";
        case "SniperPrimary_DamageMin": return "Lightning Gun Damage Min (70)";
        case "SniperPrimary_DamageMax": return "Lightning Gun Damage Max (70)";
        case "SniperPrimary_TraceRange": return "Lightning Gun Trace Range (17000)";
        case "SniperPrimary_FireRate": return "Lightning Gun Fire Rate (1.6)";
        case "SniperPrimary_NumArcs": return "Lightning Gun Num Arcs (3)";
        case "SniperPrimary_SecDamageMult": return "Lightning Gun Arc Damage Multiplier (0.5)";
        case "SniperPrimary_SecTraceDist": return "Lightning Gun Arc Trace Distance (300)";
        case "SniperPrimary_HeadshotDamageMult": return "Lightning Gun Headshot Multiplier (2.0)";
        case "bGiveSniperRifle": return "Give Lightning Gun to Player (false)";
        case "SniperRifleAmmoGiven": return "Lightning Gun Ammo Given (15)";

        case "bModifyClassicSniperRifle": return "Modify the Sniper Rifle (false)";
        case "ClassicSniperRifle_PutDownTime": return "Sniper Rifle Put Down Time (0.58)";
        case "ClassicSniperRifle_BringUpTime": return "Sniper Rifle Bring Up Time (0.6)";
        case "ClassicSniperRifle_MinReloadPct": return "Sniper Rifle MinReloadPct (0.5)";
        case "ClassicSniperPrimary_AmmoPerFire": return "Sniper Rifle Ammo Per Fire (1)";
        case "ClassicSniperPrimary_DamageMin": return "Sniper Rifle Damage Min (60)";
        case "ClassicSniperPrimary_DamageMax": return "Sniper Rifle Damage Max (60)";
        case "ClassicSniperPrimary_TraceRange": return "Sniper Rifle Trace Range (17000)";
        case "ClassicSniperPrimary_FireRate": return "Sniper Rifle Fire Rate (1.33)";
        case "ClassicSniperPrimary_HeadshotDamageMult": return "Sniper Rifle Headshot Multiplier (2.0)";
        case "bGiveClassicSniperRifle": return "Give Sniper Rifle to Player (false)";
        case "ClassicSniperRifleAmmoGiven": return "Sniper Rifle Ammo Given (15)";

        case "bModifySuperShockRifle": return "Modify the Super Shock Rifle (false)";
        case "SuperShockRifle_PutDownTime": return "Super Shock Rifle Put Down Time (0.33)";
        case "SuperShockRifle_BringUpTime": return "Super Shock Rifle Bring Up Time (0.33)";
        case "SuperShockRifle_MinReloadPct": return "Super Shock Rifle MinReloadPct (0.5)";
        case "SuperShockPrimary_TraceRange": return "Super Shock primary trace range (17000)";
        case "SuperShockPrimary_Momentum": return "Super Shock Primary Momentum (60000.0)";
        case "SuperShockPrimary_AmmoPerFire": return "Super Shock Primary Ammo Per Fire (1)";
        case "SuperShockPrimary_DamageMin": return "Super Shock Primary Damage Min (45)";
        case "SuperShockPrimary_DamageMax": return "Super Shock Primary Damage Max (45)";
        case "SuperShockPrimary_FireRate": return "Super Shock Primary Fire Rate (0.7)";
        case "bGiveSuperShock": return "Give Super Shock Rifle to Player (false)";
        case "SuperShockAmmoGiven": return "Super Shock Rifle Ammo Given (20)";
        
        case "bModifyONSGrenadeLauncher": return "Modify the ONS Grenade Launcher (false)";
        case "ONSGrenade_PutDownTime": return "ONS Grenade Launcher Put Down Time (0.33)";
        case "ONSGrenade_BringUpTime": return "ONS Grenade Launcher Bring Up Time (0.33)";
        case "ONSGrenade_MinReloadPct": return "ONS Grenade Launcher MinReloadPct (0.5)";
        case "ONSGrenadePrimary_FireRate": return "ONS Grenade Primary Fire Rate (0.33)";
        case "ONSGrenadePrimary_AmmoPerFire": return "ONS Grenade Primary Ammo Per Fire (1)";
        case "ONSGrenadeProj_bBounce": return "ONS Grenade Bounce (true)";
        case "ONSGrenadeProj_Speed": return "ONS Grenade Speed (1200.0)";
        case "ONSGrenadeProj_MaxSpeed": return "ONS Grenade Max Speed (1200.0)";
        case "ONSGrenadeProj_TossZ": return "ONS Grenade TossZ (0.0)";
        case "ONSGrenadeProj_Damage": return "ONS Grenade Damage (100.0)";
        case "ONSGrenadeProj_DamageRadius": return "ONS Grenade Damage Radius (175.0)";
        case "ONSGrenadeProj_MomentumTransfer": return "ONS Grenade Momentum Transfer (50000.0)";
        case "ONSGrenadeProj_CullDistance": return "ONS Grenade Cull Distance (5000.0)";
        case "ONSGrenadeProj_LifeSpan": return "ONS Grenade Life Span (0.0)";
        case "ONSGrenadeProj_DampenFactor": return "ONS Grenade Dampen Factor (0.5)";
        case "ONSGrenadeProj_DampenFactor": return "ONS Grenade Dampen Factor Parallel (0.8)";
        case "bGiveONSGrenade": return "Give ONS Grenade Launcher to Player (false)";
        case "ONSGrenadeAmmoGiven": return "ONS Grenade Launcher Ammo Given (10)";

        case "bModifyONSAvril": return "Modify the ONS Avril Launcher (false)";
        case "ONSAvril_LockCheckFreq": return "ONS Avril Launcher Lock Check Freq (0.2)";
        case "ONSAvril_MaxLockRange": return "ONS Avril Launcher Max Lock Range (15000.0)";
        case "ONSAvril_LockAim": return "ONS Avril Launcher Lock Aim (0.996)";
        case "ONSAvril_PutDownTime": return "ONS Avril Launcher Put Down Time (0.33)";
        case "ONSAvril_BringUpTime": return "ONS Avril Launcher Bring Up Time (0.45)";
        case "ONSAvril_MinReloadPct": return "ONS Avril Launcher MinReloadPct (0.5)";
        case "ONSAvrilPrimary_AmmoPerFire": return "ONS Avril Primary Ammo Per Fire (1)";
        case "ONSAvrilPrimary_FireRate": return "ONS Avril Primary Fire Rate (4.0)";
        case "ONSAvrilPrimary_KickMomentum": return "ONS Avril Primary Kick Momentum ((X=-350.0: returnZ=175.0)";
        case "ONSAvrilPrimary_LeadTargetDelay": return "ONS Avril Lead Target Delay (1.0)";
        case "ONSAvrilProj_bProjTarget": return "ONS Avril Projectile Target (true)";
        case "ONSAvrilProj_Speed": return "ONS Avril Speed (550.0)";
        case "ONSAvrilProj_MaxSpeed": return "ONS Avril Max Speed (2800.0)";
        case "ONSAvrilProj_Damage": return "ONS Avril Damage (125.0)";
        case "ONSAvrilProj_DamageRadius": return "ONS Avril Damage Radius (150.0)";
        case "ONSAvrilProj_MomentumTransfer": return "ONS Avril Momentum Transfer (50000.0)";
        case "ONSAvrilProj_LifeSpan": return "ONS Avril Life Span (7.0)";
        case "bGiveONSAvril": return "Give ONS Avril Launcher to Player (false)";
        case "ONSAvrilAmmoGiven": return "ONS Avril Launcher Ammo Given (5)";

        case "ONSMineLayer_ReloadDelay": return "ONS Mine Layer Lock Check Freq (0.2)";
        case "ONSMineLayer_MaxMines": return "ONS Mine Layer Max Mines (8)";
        case "ONSMineLayer_PutDownTime": return "ONS Mine Layer Put Down Time (0.40)";
        case "ONSMineLayer_BringUpTime": return "ONS Mine Layer Bring Up Time (0.35)";
        case "ONSMineLayer_MinReloadPct": return "ONS Mine Layer MinReloadPct (0.5)";
        case "ONSMineLayerPrimary_AmmoPerFire": return "ONS Mine Layer Ammo Per Fire (1)";
        case "ONSMineLayerPrimary_FireRate": return "ONSMineProjectile_CullDistance Mine Layer Fire Rate (4.0)";
        case "ONSMineProjectile_DetectionTimer": return "ONS Mine Detection Timer (0.5)";
        case "ONSMineProjectile_ScurrySpeed": return "ONS Mine Scurry Speed (525.0)";
        case "ONSMineProjectile_ScurryAnimRate": return "ONS Mine Scurry Anim Rate (4.1)";
        case "ONSMineProjectile_TargetLocFuzz": return "ONS Mine Target Lock Fuzz (250)";
        case "ONSMineProjectile_bBounce": return "ONS Mine Bounce (true)";
        case "ONSMineProjectile_Speed": return "ONS Mine Speed (800.0)";
        case "ONSMineProjectile_MaxSpeed": return "ONS Mine Max Speed (2800.0)";
        case "ONSMineProjectile_Damage": return "ONS Mine Damage (95.0)";
        case "ONSMineProjectile_DamageRadius": return "ONS Mine Damage Radius (250.0)";
        case "ONSMineProjectile_MomentumTransfer": return "ONS Mine Momentum Transfer (50000.0)";
        case "ONSMineProjectile_CullDistance": return "ONS Mine Cull Distance (6000.0)";
        case "bGiveONSMineLayer": return "Give ONS Mine Layer to Player (false)";
        case "ONSMineLayerAmmoGiven": return "ONS Mine Layer Ammo Given (4)";
    }
}

function GetServerDetails( out GameInfo.ServerResponseLine ServerState )
{
    local int i;
    super.GetServerDetails(ServerState);

	i = ServerState.ServerInfo.Length;
	ServerState.ServerInfo.Length = i+1;
	ServerState.ServerInfo[i].Key = "WSUTComp Weapon Config";
	ServerState.ServerInfo[i].Value = FriendlyVersion;
}

function ModifyPlayer(Pawn Other)
{
    if(bModifyAssaultAmmo)
    {
        class'AssaultRifle'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, AssaultRifleAmmoGiven);
        class'AssaultRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'AssaultRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, AssaultRifleAmmoGiven);

        class'AssaultRifle'.default.FireModeClass[1].default.AmmoClass.default.InitialAmount = Min(999, AssaultGrenadesGiven);
        class'AssaultRifle'.default.FireModeClass[1].default.AmmoClass.default.MaxAmmo = 
            Max(class'AssaultRifle'.default.FireModeClass[1].default.AmmoClass.default.MaxAmmo, AssaultGrenadesGiven);
    }

    if(bGiveBioRifle)
    {
        class'BioRifle'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, BioAmmoGiven);
        class'BioRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'BioRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, BioAmmoGiven);

        Other.CreateInventory("XWeapons.BioRifle");
    }

    if(bGiveShock)
    {
        class'ShockRifle'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, ShockAmmoGiven);
        class'ShockRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'ShockRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, ShockAmmoGiven);

        Other.CreateInventory("XWeapons.ShockRifle");
    }

    if(bGiveLinkGun)
    {
        class'LinkGun'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, LinkGunAmmoGiven);
        class'LinkGun'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'LinkGun'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, LinkGunAmmoGiven);

        Other.CreateInventory("XWeapons.LinkGun");
    }

    if(bGiveMinigun)
    {
        class'Minigun'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, MinigunAmmoGiven);
        class'Minigun'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'Minigun'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, MinigunAmmoGiven);

        Other.CreateInventory("XWeapons.Minigun");
    }

    if(bGiveFlakCannon)
    {
        class'FlakCannon'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, FlakCannonAmmoGiven);
        class'FlakCannon'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'FlakCannon'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, FlakCannonAmmoGiven);

        Other.CreateInventory("XWeapons.FlakCannon");
    }

    if(bGiveRocketLauncher)
    {
        class'RocketLauncher'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, RocketLauncherAmmoGiven);
        class'RocketLauncher'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'RocketLauncher'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, RocketLauncherAmmoGiven);

        Other.CreateInventory("XWeapons.RocketLauncher");
    }

    if(bGiveSniperRifle)
    {
        class'SniperRifle'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, SniperRifleAmmoGiven);
        class'SniperRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'SniperRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, SniperRifleAmmoGiven);

        Other.CreateInventory("XWeapons.SniperRifle");
    }

    if(bGiveClassicSniperRifle)
    {
        class'ClassicSniperRifle'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, ClassicSniperRifleAmmoGiven);
        class'ClassicSniperRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'ClassicSniperRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, ClassicSniperRifleAmmoGiven);

        Other.CreateInventory("XWeapons.ClassicSniperRifle");
    }

    if(bGiveSuperShock)
    {
        class'SuperShockRifle'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, SuperShockAmmoGiven);
        class'SuperShockRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'SuperShockRifle'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, SuperShockAmmoGiven);

        Other.CreateInventory("XWeapons.SuperShockRifle");
    }

    if(bGiveONSGrenade)
    {
        class'ONSGrenadeLauncher'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, ONSGrenadeAmmoGiven);
        class'ONSGrenadeLauncher'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'ONSGrenadeLauncher'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, ONSGrenadeAmmoGiven);

        Other.CreateInventory("Onslaught.ONSGrenadeLauncher");
    }

    if(bGiveONSAvril)
    {
        class'ONSAvril'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, ONSAvrilAmmoGiven);
        class'ONSAvril'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'ONSAvril'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, ONSAvrilAmmoGiven);

        Other.CreateInventory("Onslaught.ONSAvril");
    }

    if(bGiveONSMineLayer)
    {
        class'ONSMineLayer'.default.FireModeClass[0].default.AmmoClass.default.InitialAmount = Min(999, ONSMineLayerAmmoGiven);
        class'ONSMineLayer'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo = 
            Max(class'ONSMineLayer'.default.FireModeClass[0].default.AmmoClass.default.MaxAmmo, ONSMineLayerAmmoGiven);

        Other.CreateInventory("Onslaught.ONSMineLayer");
    }

    super.ModifyPlayer(Other);
}

defaultproperties
{
    bAddToServerPackages=true
    IconMaterialName="MutatorArt.nosym"
    FriendlyName="WSUTComp Weapon Config V13"
    FriendlyVersion="V13"
    Description="Configuration for WSUTComp weapons"
    RemoteRole=ROLE_SimulatedProxy
    bAlwaysRelevant=true
    bNetTemporary=true

    bModifyWeapons=false

    bModifyShieldGun=false
    ShieldGun_BringUpTime=0.33
    ShieldGun_PutDownTime=0.33
    ShieldGun_MinReloadPct=0.5
    ShieldPrimary_FireRate=0.6
    ShieldPrimary_AmmoPerFire=0
    ShieldPrimary_ShieldRange=112.0
    ShieldPrimary_MinHoldTime=0.4
    ShieldPrimary_MinForce=65000.0
    ShieldPrimary_MaxForce=100000.0
    ShieldPrimary_SelfForceScale=1.0
    ShieldPrimary_SelfDamageScale=0.3
    ShieldPrimary_MinSelfDamage=8
    ShieldPrimary_AutoFireTestFreq=0.15
    ShieldPrimary_FullyChargedTime=2.5
    ShieldPrimary_ChargingSoundVolume=200
    ShieldSecondary_FireRate=1.0
    ShieldSecondary_AmmoPerFire=15
    ShieldSecondary_AmmoRegenTime=0.2
    ShieldSecondary_ChargeupTime=3.0
    ShieldSecondary_ShieldSoundVolume=220

    bModifyAssaultRifle=false
    AssaultRifle_PutDownTime=0.33
    AssaultRifle_BringUpTime=0.33
    AssaultRifle_MinReloadPct=0.5
    AssaultRifle_bDualMode=false
    AssaultPrimary_DamageMin=7
    AssaultPrimary_DamageMax=7
    AssaultPrimary_TraceRange=10000.0
    AssaultPrimary_Momentum=0.0
    AssaultPrimary_AmmoPerFire=1
    AssaultPrimary_FireRate=0.16
    AssaultPrimary_AimError=800.0
    AssaultPrimary_Spread=0.02
    AssaultSecondary_DamageAtten=1.0
    AssaultSecondary_mScale=1.0
    AssaultSecondary_mScaleMultiplier=0.9
    AssaultSecondary_mSpeedMin=250.0
    AssaultSecondary_mSpeedMax=3000.0
    AssaultSecondary_mHoldSpeedMin=850.0
    AssaultSecondary_mHoldSpeedMax=1600.0
    AssaultSecondary_mHoldSpeedGainPerSec=750.0
    AssaultSecondary_mWaitTime=0.5
    AssaultGrenade_ExplodeTimer=2.0
    AssaultGrenade_DampenFactor=0.5
    AssaultGrenade_DampenFactorParallel=0.8
    AssaultGrenade_TossZ=0.0
    AssaultGrenade_Damage=70.0
    AssaultGrenade_DamageRadius=220.0
    AssaultGrenade_MomentumTransfer=75000.0
    bModifyAssaultAmmo=false
    AssaultRifleAmmoGiven=100
    AssaultGrenadesGiven=4

    bModifyBioRifle=false
    BioRifle_BringUpTime=0.33
    BioRifle_PutDownTime=0.33
    BioRifle_MinReloadPct=0.5
    BioPrimary_FireRate=0.33
    BioPrimary_AmmoPerFire=1
    BioSecondary_FireRate=0.33
    BioSecondary_GoopUpRate=0.25
    BioSecondary_MaxGoopLoad=10
    Bio_ProjBaseDamage=20.0
    Bio_ProjGloblingSpeed=200.0
    Bio_ProjRestTime=2.25
    Bio_ProjTouchDetinationDelay=0.15
    Bio_ProjDripTime=1.8
    Bio_ProjMaxGoopLevel=5
    Bio_ProjMergeGlobs=true
    bGiveBioRifle=false
    BioAmmoGiven=20

    bModifyShockRifle=false
    ShockRifle_BringUpTime=0.33
    ShockRifle_PutDownTime=0.33
    ShockRifle_MinReloadPct=0.5
    ShockPrimary_TraceRange=17000
    ShockPrimary_Momentum=60000.0
    ShockPrimary_AmmoPerFire=1
    ShockPrimary_DamageMin=45
    ShockPrimary_DamageMax=45
    ShockPrimary_FireRate=0.7
    ShockSecondary_AmmoPerFire=1
    ShockSecondary_FireRate=0.6
    ShockSecondary_ProjSpeed=1150
    ShockSecondary_ProjMaxSpeed=1150
    ShockSecondary_ProjDamage=45
    ShockSecondary_ProjDamageRadius=150
    ShockSecondary_ProjMomentumTransfer=70000.0
    ShockSecondary_ProjComboDamage=200
    ShockSecondary_ProjComboRadius=275
    ShockSecondary_ProjComboMomentumTransfer=150000
    ShockSecondary_ProjLifeSpan=10.0
    ShockSecondary_ProjComboAmmoCost=3
    ShockSecondary_ProjForceScale=5.0
    ShockSecondary_ProjForceRadius=40.0
    ShockSecondary_ProjSoundRadius=100
    ShockSecondary_ProjSoundVolume=50
    bGiveShock=false
    ShockAmmoGiven=20

    bModifyLinkGun=false
    LinkPrimary_AmmoPerFire=2
    LinkPrimary_FireRate=0.2
    LinkProj_Damage=30
    LinkProj_DamageRadius=0.0
    LinkProj_Speed=1000.0
    LinkProj_MaxSpeed=4000.0
    LinkProj_MomentumTransfer=0
    LinkProj_LifeSpan=3
    LinkProj_CullDistance=+3500.0
    LinkSecondary_TraceRange=1100.0
    LinkSecondary_MomentumTransfer=2000.0
    LinkSecondary_AmmoPerFire=1
    LinkSecondary_Damage=9
    LinkSecondary_FireRate=0.12
    LinkSecondary_LinkFlexibility=0.64
    LinkSecondary_LinkBreakDelay=0.5
    LinkGun_PutDownTime=0.33
    LinkGun_BringUpTime=0.33
    LinkGun_MinReloadPct=0.5
    bGiveLinkgun=false
    LinkGunAmmoGiven=70

    bModifyMinigun=false
    Minigun_PutDownTime=0.33
    Minigun_BringUpTime=0.33
    Minigun_MinReloadPct=0.5
    MinigunPrimary_DamageMin=7
    MinigunPrimary_DamageMax=8
    MinigunPrimary_TraceRange=10000.0
    MinigunPrimary_Momentum=0.0
    MinigunPrimary_AmmoPerFire=1
    MinigunPrimary_RoundsPerRotation=5
    MinigunPrimary_BarrelRotationsPerSec=3.0
    MinigunPrimary_AimError=900.0
    MinigunPrimary_Spread=0.08
    MinigunPrimary_PreFireTime=0.27
    MinigunPrimary_WindupTime=0.27
    MinigunSecondary_DamageMin=14
    MinigunSecondary_DamageMax=16
    MinigunSecondary_TraceRange=10000.0
    MinigunSecondary_Momentum=0.0
    MinigunSecondary_AmmoPerFire=1
    MinigunSecondary_RoundsPerRotation=5
    MinigunSecondary_BarrelRotationsPerSec=1.0
    MinigunSecondary_AimError=900.0
    MinigunSecondary_Spread=0.03
    MinigunSecondary_PreFireTime=0.15
    MinigunSecondary_WindupTime=0.15
    bGiveMinigun=false
    MinigunAmmoGiven=150

    bModifyFlakCannon=false
    FlakCannon_BringUpTime=0.33
    FlakCannon_PutDownTime=0.33
    FlakCannon_MinReloadPct=0.5
    FlakPrimary_AmmoPerFire=1
    FlakPrimary_FireRate=0.95
    FlakPrimary_ProjPerFire=9
    FlakPrimary_Spread=1400
    FlakChunk_Bounces=1
    FlakChunk_DamageAtten=0.5
    FlakChunk_Speed=2500
    FlakChunk_MaxSpeed=2700
    FlakChunk_Damage=13
    FlakChunk_MomentumTransfer=10000.0
    FlakChunk_CullDistance=3000.0
    FlakChunk_LifeSpan=2.7
    FlakChunk_Bounce=True
    FlakSecondary_AmmoPerFire=1
    FlakSecondary_FireRate=1.11
    FlakSecondary_ProjPerFire=1
    FlakSecondary_Spread=0.0
    FlakShell_TossZ=225.0
    FlakShell_Speed=1200.0
    FlakShell_MaxSpeed=1200.0
    FlakShell_Damage=90
    FlakShell_DamageRadius=220.0
    FlakShell_MomentumTransfer=75000.0
    FlakShell_CullDistance=4000.0
    FlakShell_LifeSpan=6.0
    bGiveFlakCannon=false
    FlakCannonAmmoGiven=15

    bModifyRocketLauncher=false
    RocketLauncher_PutDownTime=0.33
    RocketLauncher_BringUpTime=0.33
    RocketLauncher_MinReloadPct=0.5
    RocketLauncher_SeekCheckFreq=0.5
    RocketLauncher_SeekRange=8000.0
    RocketLauncher_LockRequiredTime=1.25
    RocketLauncher_UnLockRequiredTime=0.5
    RocketLauncher_LockAim=0.996
    RocketPrimary_AmmoPerFire=1
    RocketPrimary_FireRate=0.9
    RocketSecondary_AmmoPerFire=1
    RocketSecondary_FireRate=0.95
    RocketSecondary_TightSpread=300.0
    RocketSecondary_LooseSpread=1000.0
    RocketSecondary_MaxLoad=3
    RocketSecondary_MaxHoldTime=2.3
    RocketProj_Speed=1350.0
    RocketProj_MaxSpeed=1350.0
    RocketProj_Damage=90.0
    RocketProj_DamageRadius=220.0
    RocketProj_MomentumTransfer=50000.0
    RocketProj_LifeSpan=8.0
    RocketProj_FlockRadius=12.0
    RocketProj_FlockStiffness=40.0
    RocketProj_FlockMaxForce=600.0
    RocketProj_FlockCurlForce=450.0    
    bGiveRocketLauncher=false
    RocketLauncherAmmoGiven=12

    bModifySniperRifle=false
    SniperRifle_BringUpTime=0.36
    SniperRifle_PutDownTime=0.33
    SniperRifle_MinReloadPct=0.25
    SniperPrimary_AmmoPerFire=1
    SniperPrimary_DamageMin=70
    SniperPrimary_DamageMax=70
    SniperPrimary_TraceRange=17000
    SniperPrimary_FireRate=1.6
    SniperPrimary_NumArcs=3
    SniperPrimary_SecDamageMult=0.5
    SniperPrimary_SecTraceDist=300
    SniperPrimary_HeadshotDamageMult=2.0
    bGiveSniperRifle=false
    SniperRifleAmmoGiven=15

    bModifyClassicSniperRifle=false
    ClassicSniperRifle_BringUpTime=0.6
    ClassicSniperRifle_PutDownTime=0.58
    ClassicSniperRifle_MinReloadPct=0.5
    ClassicSniperPrimary_AmmoPerFire=1
    ClassicSniperPrimary_DamageMin=60
    ClassicSniperPrimary_DamageMax=60
    ClassicSniperPrimary_TraceRange=17000
    ClassicSniperPrimary_FireRate=1.33
    ClassicSniperPrimary_HeadshotDamageMult=2.0
    bGiveClassicSniperRifle=false
    ClassicSniperRifleAmmoGiven=15

    bModifySuperShockRifle=false
    SuperShockRifle_BringUpTime=0.33
    SuperShockRifle_PutDownTime=0.33
    SuperShockRifle_MinReloadPct=0.5
    SuperShockPrimary_TraceRange=17000
    SuperShockPrimary_Momentum=60000.0
    SuperShockPrimary_AmmoPerFire=0
    SuperShockPrimary_DamageMin=1000
    SuperShockPrimary_DamageMax=1000
    SuperShockPrimary_FireRate=1.1
    bGiveSuperShock=false
    SuperShockAmmoGiven=20

    bModifyONSGrenadeLauncher=false
    ONSGrenadePrimary_AmmoPerFire=1
    ONSGrenadePrimary_FireRate=0.65
    ONSGrenadeProj_bBounce=true
    ONSGrenadeProj_Speed=1200.0
    ONSGrenadeProj_MaxSpeed=1200.0
    ONSGrenadeProj_TossZ=0.0
    ONSGrenadeProj_Damage=100.0
    ONSGrenadeProj_DamageRadius=175.0
    ONSGrenadeProj_MomentumTransfer=50000.0
    ONSGrenadeProj_CullDistance=5000.0
    ONSGrenadeProj_LifeSpan=0.0
    ONSGrenadeProj_DampenFactor=0.5
    ONSGrenadeProj_DampenFactorParallel=0.8
    ONSGrenadeLauncher_PutDownTime=0.33
    ONSGrenadeLauncher_BringUpTime=0.33
    ONSGrenadeLauncher_MinReloadPct=0.5
    bGiveONSGrenade=false
    ONSGrenadeAmmoGiven=10

    bModifyONSAvril=false
    ONSAvril_LockCheckFreq=0.2
    ONSAvril_MaxLockRange=15000.0
    ONSAvril_LockAim=0.996
    ONSAvril_PutDownTime=0.33
    ONSAvril_BringUpTime=0.45
    ONSAvril_MinReloadPct=0.5
    ONSAvrilPrimary_AmmoPerFire=1
    ONSAvrilPrimary_FireRate=4.0
    ONSAvrilPrimary_KickMomentum=(X=-350.0,Z=175.0)
    ONSAvrilProj_LeadTargetDelay=1.0
    ONSAvrilProj_bProjTarget=true
    ONSAvrilProj_Speed=550.0
    ONSAvrilProj_MaxSpeed=2800.0
    ONSAvrilProj_Damage=125.0
    ONSAvrilProj_DamageRadius=150.0
    ONSAvrilProj_MomentumTransfer=50000.0
    ONSAvrilProj_LifeSpan=7.0
    bGiveONSAvril=false
    ONSAvrilAmmoGiven=5

    bModifyONSMineLayer=false
    ONSMineLayer_ReloadDelay=0.4
    ONSMineLayer_MaxMines=8
    ONSMineLayer_PutDownTime=0.40
    ONSMineLayer_BringUpTime=0.35
    ONSMineLayer_MinReloadPct=0.5
    ONSMineLayerPrimary_AmmoPerFire=1
    ONSMineLayerPrimary_FireRate=1.1
    ONSMineProjectile_DetectionTimer=0.5
    ONSMineProjectile_ScurrySpeed=525.0
    ONSMineProjectile_ScurryAnimRate=4.1
    ONSMineProjectile_TargetLocFuzz=250
    ONSMineProjectile_Speed=800.0
    ONSMineProjectile_MaxSpeed=800.0
    ONSMineProjectile_Damage=95.0
    ONSMineProjectile_DamageRadius=250.0
    ONSMineProjectile_CullDistance=6000.0
    ONSMineProjectile_MomentumTransfer=50000.0
    ONSMineProjectile_bBounce=true
    bGiveONSMineLayer=false
    ONSMineLayerAmmoGiven=4
}