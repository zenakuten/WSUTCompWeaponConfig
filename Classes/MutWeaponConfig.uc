
class MutWeaponConfig extends Mutator;

var string FriendlyVersion;

// shieldgun
var config bool bModifyShieldGun;
var config float ShieldPrimary_FireRate;
var config float ShieldPrimary_AmmoPerFire;
var config float ShieldPrimary_ShieldRange;                  // from pawn centre
var config float ShieldPrimary_MinHoldTime;                  // held for this time or less will do minimum damage/force. held for MaxHoldTime will do max
var config float ShieldPrimary_MinForce, ShieldPrimary_MaxForce;           // force to other players
var config float ShieldPrimary_MinDamage, ShieldPrimary_MaxDamage;         // damage to other players
var config float ShieldPrimary_SelfForceScale;               // %force to self (when shielding a wall)
var config float ShieldPrimary_SelfDamageScale;              // %damage to self (when shielding a wall)
var config float ShieldPrimary_MinSelfDamage;
var config float ShieldPrimary_AutoFireTestFreq;
var config float ShieldPrimary_FullyChargedTime;				// held for this long will do max damage
var config bool ShieldPrimary_bAutoRelease;
var config bool ShieldPrimary_bStartedChargingForce;
var	config byte  ShieldPrimary_ChargingSoundVolume;
var config float ShieldPrimary_AutoHitTime;

var config float ShieldSecondary_FireRate;
var config float ShieldSecondary_AmmoPerFire;
var config float ShieldSecondary_AmmoRegenTime;
var config float ShieldSecondary_ChargeupTime;
var config byte ShieldSecondary_ShieldSoundVolume;

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


replication
{
    reliable if(Role == ROLE_Authority)
        ClientModifyWeapons;

    // shield
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyShieldGun,
        ShieldPrimary_FireRate, ShieldPrimary_AmmoPerFire, ShieldPrimary_ShieldRange, ShieldPrimary_MinHoldTime,
        ShieldPrimary_MinForce, ShieldPrimary_MaxForce, ShieldPrimary_MinDamage, ShieldPrimary_MaxDamage,
        ShieldPrimary_SelfForceScale, ShieldPrimary_SelfDamageScale, ShieldPrimary_MinSelfDamage,
        ShieldPrimary_AutoFireTestFreq, ShieldPrimary_FullyChargedTime, ShieldPrimary_bAutoRelease,
        ShieldPrimary_bStartedChargingForce, ShieldPrimary_ChargingSoundVolume, ShieldPrimary_AutoHitTime;

    reliable if(bNetInitial && Role == ROLE_Authority)
        ShieldSecondary_FireRate, ShieldSecondary_AmmoPerFire, ShieldSecondary_AmmoRegenTime,
        ShieldSecondary_ChargeupTime, ShieldSecondary_ShieldSoundVolume;

    // shock
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyShockRifle,
        ShockPrimary_TraceRange, ShockPrimary_Momentum, ShockPrimary_AmmoPerFire, ShockPrimary_DamageMin,
        ShockPrimary_DamageMax, ShockPrimary_FireRate;

    reliable if(bNetInitial && Role == ROLE_Authority)
        ShockSecondary_AmmoPerFire, ShockSecondary_FireRate, ShockSecondary_ProjSpeed,
        ShockSecondary_ProjMaxSpeed, ShockSecondary_ProjDamage, ShockSecondary_ProjDamageRadius,
        ShockSecondary_ProjMomentumTransfer, ShockSecondary_ProjComboDamage, ShockSecondary_ProjComboRadius,
        ShockSecondary_ProjComboMomentumTransfer, ShockSecondary_ProjLifeSpan, 
        ShockSecondary_ProjComboAmmoCost, ShockSecondary_ProjForceScale, 
        ShockSecondary_ProjForceRadius, ShockSecondary_ProjSoundRadius, ShockSecondary_ProjSoundVolume;

    // sniper
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifySniperRifle,
        SniperPrimary_AmmoPerFire, SniperPrimary_DamageMin, SniperPrimary_DamageMax,
        SniperPrimary_TraceRange, SniperPrimary_FireRate, SniperPrimary_NumArcs, SniperPrimary_SecDamageMult,
        SniperPrimary_SecTraceDist, SniperPrimary_HeadshotDamageMult;

    // bio
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyBioRifle, BioPrimary_FireRate, BioPrimary_AmmoPerFire, BioSecondary_FireRate, BioSecondary_GoopUpRate,
        BioSecondary_MaxGoopLoad, Bio_ProjBaseDamage, Bio_ProjGloblingSpeed,
        Bio_ProjRestTime, Bio_ProjTouchDetinationDelay, Bio_ProjDripTime, Bio_ProjMaxGoopLevel, Bio_ProjMergeGlobs;

}

simulated function ModifyShieldGun()
{
    if(!bModifyShieldGun)
        return;

    class'ShieldFire'.default.FireRate = ShieldPrimary_FireRate;
    class'ShieldFire'.default.AmmoPerFire = ShieldPrimary_AmmoPerFire;

    class'ShieldFire'.default.ShieldRange = ShieldPrimary_ShieldRange;
    class'ShieldFire'.default.MinHoldTime = ShieldPrimary_MinHoldTime;
    class'ShieldFire'.default.MinForce = ShieldPrimary_MinForce;
    class'ShieldFire'.default.MaxForce = ShieldPrimary_MaxForce;
    class'ShieldFire'.default.SelfForceScale = ShieldPrimary_SelfForceScale;
    class'ShieldFire'.default.SelfDamageScale = ShieldPrimary_SelfDamageScale;
    class'ShieldFire'.default.MinSelfDamage = ShieldPrimary_MinSelfDamage;
    class'ShieldFire'.default.AutoFireTestFreq = ShieldPrimary_AutoFireTestFreq;
    class'ShieldFire'.default.FullyChargedTime = ShieldPrimary_FullyChargedTime;
    class'ShieldFire'.default.ChargingSoundVolume = ShieldPrimary_ChargingSoundVolume;

    class'ShieldAltFire'.default.FireRate = ShieldSecondary_FireRate;
    class'ShieldAltFire'.default.AmmoPerFire = ShieldSecondary_AmmoPerFire;
    class'ShieldAltFire'.default.AmmoRegenTime = ShieldSecondary_AmmoRegenTime;
    class'ShieldAltFire'.default.ChargeupTime = ShieldSecondary_ChargeupTime;
    class'ShieldAltFire'.default.ShieldSoundVolume = ShieldSecondary_ShieldSoundVolume;
}

simulated function ModifyAssaultRifle()
{
    //TODO
}

simulated function ModifyShockRifle()
{
    if(!bModifyShockRifle)
        return;

    class'NewNet_ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'NewNet_ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'NewNet_ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'NewNet_ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'NewNet_ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'NewNet_ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;

    class'NewNet_ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'NewNet_ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    class'NewNet_ShockProjectile'.default.Speed = ShockSecondary_ProjSpeed;
    class'NewNet_ShockProjectile'.default.MaxSpeed = ShockSecondary_ProjMaxSpeed;
    class'NewNet_ShockProjectile'.default.Damage = ShockSecondary_ProjDamage;
    class'NewNet_ShockProjectile'.default.DamageRadius = ShockSecondary_ProjDamageRadius;
    class'NewNet_ShockProjectile'.default.MomentumTransfer = ShockSecondary_ProjMomentumTransfer;
    class'NewNet_ShockProjectile'.default.ComboDamage = ShockSecondary_ProjComboDamage;
    class'NewNet_ShockProjectile'.default.ComboRadius = ShockSecondary_ProjComboRadius;
    class'NewNet_ShockProjectile'.default.ComboMomentumTransfer = ShockSecondary_ProjComboMomentumTransfer;
    class'NewNet_ShockProjectile'.default.LifeSpan = ShockSecondary_ProjLifeSpan;
    class'NewNet_ShockProjectile'.default.ComboAmmoCost = ShockSecondary_ProjComboAmmoCost;
    class'NewNet_ShockProjectile'.default.ForceScale = ShockSecondary_ProjForceScale;
    class'NewNet_ShockProjectile'.default.ForceRadius = ShockSecondary_ProjForceRadius;
    class'NewNet_ShockProjectile'.default.SoundRadius = ShockSecondary_ProjSoundRadius;
    class'NewNet_ShockProjectile'.default.SoundVolume = ShockSecondary_ProjSoundVolume;
}

simulated function ModifySniperRifle()
{
    if(!bModifySniperRifle)
        return;

    class'NewNet_SniperFire'.default.AmmoPerFire = SniperPrimary_AmmoPerFire;
    class'NewNet_SniperFire'.default.DamageMin = SniperPrimary_DamageMin;
    class'NewNet_SniperFire'.default.DamageMax = SniperPrimary_DamageMax;
    class'NewNet_SniperFire'.default.TraceRange = SniperPrimary_TraceRange;
    class'NewNet_SniperFire'.default.FireRate = SniperPrimary_FireRate;
    class'NewNet_SniperFire'.default.NumArcs = SniperPrimary_NumArcs;
    class'NewNet_SniperFire'.default.SecDamageMult = SniperPrimary_SecDamageMult;
    class'NewNet_SniperFire'.default.SecTraceDist = SniperPrimary_SecTraceDist;
    class'NewNet_SniperFire'.default.HeadshotDamageMult = SniperPrimary_HeadshotDamageMult;
}

simulated function ModifyBioRifle()
{
    if(!bModifyBioRifle)
        return;

    class'NewNet_BioFire'.default.FireRate = BioPrimary_FireRate;
    class'NewNet_BioFire'.default.AmmoPerFire = BioPrimary_AmmoPerFire;
    class'NewNet_BioChargedFire'.default.FireRate = BioSecondary_FireRate;
    class'NewNet_BioChargedFire'.default.GoopUpRate = BioSecondary_GoopUpRate;
    class'NewNet_BioChargedFire'.default.MaxGoopLoad = BioSecondary_MaxGoopLoad;
    class'NewNet_BioGlob'.default.BaseDamage = Bio_ProjBaseDamage;
    class'NewNet_BioGlob'.default.GloblingSpeed = Bio_ProjGloblingSpeed;
    class'NewNet_BioGlob'.default.RestTime = Bio_ProjRestTime;
    class'NewNet_BioGlob'.default.TouchDetonationDelay = Bio_ProjTouchDetinationDelay;
    class'NewNet_BioGlob'.default.DripTime = Bio_ProjDripTime;
    class'NewNet_BioGlob'.default.MaxGoopLevel = Bio_ProjMaxGoopLevel;
    class'NewNet_BioGlob'.default.bMergeGlobs = Bio_ProjMergeGlobs;
}


static function FillPlayInfo(PlayInfo PI)
{
    local byte Weight; // weight must be a byte (max value 127?)

    Super.FillPlayInfo(PI);
    Weight = 1;
    // shield gun
    PI.AddSetting("UTComp Weapon Config", "bModifyShieldGun", "Modify the Shield Gun (true)", 0, Weight++, "Check");
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

    // bio
    PI.AddSetting("UTComp Weapon Config", "bModifyBioRifle", "Modify the Bio Rifle (true)", 0, Weight++, "Check");
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
        case "bModifyShieldGun":         return "Modify the Shield Gun (true)";
        case "ShieldPrimary_FireRate":         return "Shield Primary Fire Rate (0.6)";
        case "ShieldPrimary_AmmoPerFire":         return "Shield Primary Ammo Per Fire (0)";
        case "ShieldPrimary_ShieldRange":         return "Shield Primary Shield Range (112.0)";
        case "ShieldPrimary_MinHoldTime":         return "Shield Primary Min Hold Time (0.4)";
        case "ShieldPrimary_MinForce":         return "Shield Primary Min Force (65000.0)";
        case "ShieldPrimary_MaxForce":         return "Shield Primary Max Force (100000.0)";
        case "ShieldPrimary_SelfForceScale":         return "Shield Primary Self Force Scale (1.0)";
        case "ShieldPrimary_SelfDamageScale":         return "Shield Primary Self Damage Scale (0.3)";
        case "ShieldPrimary_MinSelfDamage":         return "Shield Primary Min Self Damage (8)";
        case "ShieldPrimary_AutoFireTestFreq":         return "Shield Primary Auto Fire Test Frequency (0.15)";
        case "ShieldPrimary_FullyChargedTime":         return "Shield Primary Fully Charged Time (2.5)";
        case "ShieldPrimary_ChargingSoundVolume":         return "Shield Primary Charging Sound Volume (200)";

        case "ShieldSecondary_FireRate":         return "Shield Secondary Fire Rate (1.0)";
        case "ShieldSecondary_AmmoPerFire":         return "Shield Secondary Ammo Per Fire (15)";
        case "ShieldSecondary_AmmoRegenTime":         return "Shield Secondary Ammo Regen Time (0.2)";
        case "ShieldSecondary_ChargeupTime":         return "Shield Secondary Chargeup Time (3.0)";
        case "ShieldSecondary_ShieldSoundVolume":         return "Shield Secondary Shield Sound Volume (220)";

        case "bModifyBioRifle": return "Modify the Bio Rifle (true)"; 
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

        case "bModifyShockRifle":         return "Modify the Shock Rifle (true)";
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

simulated function BeginPlay()
{
    super.BeginPlay();
    ModifyWeapons();
    ClientModifyWeapons();
}

simulated function PostNetBeginPlay()
{
    super.PostNetBeginPlay();
    if(Role < ROLE_Authority)
        ClientModifyWeapons();
}

simulated function ModifyWeapons()
{
    ModifyShieldGun();
    ModifyAssaultRifle();
    ModifyShockRifle();
    ModifySniperRifle();
    ModifyBioRifle();
}

simulated function ClientModifyWeapons()
{
    ModifyWeapons();
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
    FriendlyName="WSUTComp Weapon Config V6"
    FriendlyVersion="V6"
    Description="Configuration for WSUTComp weapons"

    bModifyShieldGun=true
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

    bModifyShockRifle=true
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
    SniperPrimary_AmmoPerFire=1
    SniperPrimary_DamageMin=70
    SniperPrimary_DamageMax=70
    SniperPrimary_TraceRange=17000
    SniperPrimary_FireRate=1.6
    SniperPrimary_NumArcs=3
    SniperPrimary_SecDamageMult=0.5
    SniperPrimary_SecTraceDist=300
    SniperPrimary_HeadshotDamageMult=2.0

    bModifyBioRifle=true
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
}