
class MutWeaponConfig extends Mutator
    config(WSUTCompWeaponConfig)
    PerObjectConfig;

var string FriendlyVersion;

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

// load config and modify weapons server side
function PostBeginPlay()
{
    local WeaponConfigInfo weaponConfig;
    super.PostBeginPlay();

    weaponConfig = spawn(class'WeaponConfigInfo');
    weaponConfig.LoadFrom(self);
    weaponConfig.Modify();
    weaponConfig.Destroy();
}

// add rep info for new players
function ModifyLogin(out string Portal, out string Options)
{
    local Controller C, NewController;

    // this creates the controller
    super.ModifyLogin(Portal, Options);

    if(Role == ROLE_Authority)
    {
        for(C=Level.ControllerList;C!=None;C=C.NextController)
            NewController = C;

        // attach rep info to new controller
        AddRepInfo(NewController);
    }
}

function AddRepInfo(Controller C)
{
    local LinkedReplicationInfo LRI;
    local WeaponConfigInfo weaponRI;
    if(C == None || C.PlayerReplicationInfo == None)
        return;

    if(C.PlayerReplicationInfo.CustomReplicationInfo == None)
    {
        // add new custom info
        weaponRI = spawn(class'WeaponConfigInfo', C.PlayerReplicationInfo.Owner);
        weaponRI.LoadFrom(self);
        C.PlayerReplicationInfo.CustomReplicationInfo = weaponRI;
    }
    else
    {
        // or add to existing chain
        LRI = C.PlayerReplicationInfo.CustomReplicationInfo;
        while(LRI.NextReplicationInfo != None)
        {
            // don't do anything if already added
            if(LRI.IsA('WeaponConfigInfo'))
                return;

            LRI=LRI.NextReplicationInfo;
        }

        weaponRI = spawn(class'WeaponConfigInfo', C.PlayerReplicationInfo.Owner);
        weaponRI.LoadFrom(self);
        LRI.NextReplicationInfo = weaponRI;
    }
}

static function FillPlayInfo(PlayInfo PI)
{
    local byte Weight; 

    Super.FillPlayInfo(PI);
    Weight = 1;
    // shield gun
    PI.AddSetting("UTComp Weapon Config", "bModifyShieldGun", "Modify the Shield Gun (true)", 0, Weight++, "Check");
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
    PI.AddSetting("UTComp Weapon Config", "bModifyAssaultRifle", "Modify the Assault Rifle (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_PutDownTime", "Assault Rifle Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_BringUpTime", "Assault Rifle Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_MinReloadPct", "Assault Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "AssaultRifle_bDualMode", "Assault Rifle Dual Mode (false)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "AssaultPrimary_TraceRange", "Assault Primary Trace Range (10000)", 0, Weight++, "Text", "7;0:1000000");
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

    // bio
    PI.AddSetting("UTComp Weapon Config", "bModifyBioRifle", "Modify the Bio Rifle (true)", 0, Weight++, "Check");
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

    // shock
    PI.AddSetting("UTComp Weapon Config", "bModifyShockRifle", "Modify the Shock Rifle (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "ShockRifle_PutDownTime", "Shock Rifle Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShockRifle_BringUpTime", "Shock Rifle Bring Up Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShockRifle_MinReloadPct", "Shock Rifle MinReloadPct (0.5)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "ShockPrimary_TraceRange", "Shock Primary Trace Range (17000)", 0, Weight++, "Text", "7;0:1000000");
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

    // lightning gun
    PI.AddSetting("UTComp Weapon Config", "bModifySniperRifle", "Modify the Lightning Gun (true)", 0, Weight++, "Check");
    PI.AddSetting("UTComp Weapon Config", "SniperRifle_PutDownTime", "Lightning Gun Put Down Time (0.33)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SniperRifle_BringUpTime", "Lightning Gun Bring Up Time (0.36)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SniperRifle_MinReloadPct", "Shock Rifle MinReloadPct (0.25)", 0, Weight++, "Text", "8;0.0:999.0");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_AmmoPerFire", "Lightning Gun Ammo Per Fire (1)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_DamageMin", "Lightning Gun Damage Min (70)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_DamageMax", "Lightning Gun Damage Max (70)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_TraceRange", "Lightning Gun Trace Range (17000)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_FireRate", "Lightning Gun Fire Rate (1.6)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_NumArcs", "Lightning Gun Num Arcs (3)", 0, Weight++, "Text", "4;0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_SecDamageMult", "Lightning Gun Arc Damage Multiplier (0.5)", 0, Weight++, "Text", "4;0.0:1000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_SecTraceDist", "Lightning Gun Arc Trace Distance (300)", 0, Weight++, "Text", "6;0:100000");
    PI.AddSetting("UTComp Weapon Config", "SniperPrimary_HeadshotDamageMult", "Lightning Gun Headshot Multiplier (2.0)", 0, Weight++, "Text", "4;0.0:1000");
}

static event string GetDescriptionText(string PropName)
{
    switch(PropName)
    {
        case "bModifyShieldGun": return "Modify the Shield Gun (true)";
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

        case "bModifyAssaultRifle": return "Modify the Assault Rifle (true)";
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

        case "bModifyBioRifle": return "Modify the Bio Rifle (true)"; 
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

        case "bModifyShockRifle": return "Modify the Shock Rifle (true)";
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

        case "bModifySniperRifle": return "Modify the Lightning Gun";
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

    bModifyShieldGun=true
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

    bModifyBioRifle=true
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

    bModifyShockRifle=true
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

    bModifySniperRifle=true
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
}