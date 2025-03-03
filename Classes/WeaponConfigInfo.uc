class WeaponConfigInfo extends LinkedReplicationInfo;

// shieldgun
var ShieldConfigInfo ShieldConfig;
var BioConfigInfo BioConfig;
var ShockConfigInfo ShockConfig;
var SniperConfigInfo SniperConfig;


replication
{
    reliable if(Role == ROLE_Authority && bNetDirty)
        ShieldConfig, BioConfig, ShockConfig, SniperConfig;
}

function PostBeginPlay()
{
    super.PostBeginPlay();
    ShieldConfig = spawn(class'ShieldConfigInfo', self.Owner);
    BioConfig = spawn(class'BioConfigInfo', self.Owner);
    ShockConfig = spawn(class'ShockConfigInfo', self.Owner);
    SniperConfig = spawn(class'SniperConfigInfo', self.Owner);
}

simulated function PostNetBeginPlay()
{
    super.PostNetBeginPlay();
    if(Role < ROLE_Authority)
    {
        class'MutWeaponConfig'.static.ModifyWeapons(self);
    }
}

function LoadFrom(MutWeaponConfig config)
{
    //shield gun
    ShieldConfig.bModifyShieldGun = config.bModifyShieldGun;
    ShieldConfig.ShieldPrimary_FireRate = config.ShieldPrimary_FireRate;
    ShieldConfig.ShieldPrimary_AmmoPerFire = config.ShieldPrimary_AmmoPerFire;
    ShieldConfig.ShieldPrimary_ShieldRange = config.ShieldPrimary_ShieldRange;
    ShieldConfig.ShieldPrimary_MinHoldTime = config.ShieldPrimary_MinHoldTime;
    ShieldConfig.ShieldPrimary_MinForce = config.ShieldPrimary_MinForce; 
    ShieldConfig.ShieldPrimary_MaxForce = config.ShieldPrimary_MaxForce;
    ShieldConfig.ShieldPrimary_MinDamage = config.ShieldPrimary_MinDamage; 
    ShieldConfig.ShieldPrimary_MaxDamage = config.ShieldPrimary_MaxDamage;
    ShieldConfig.ShieldPrimary_SelfForceScale = config.ShieldPrimary_SelfForceScale;
    ShieldConfig.ShieldPrimary_SelfDamageScale = config.ShieldPrimary_SelfDamageScale;
    ShieldConfig.ShieldPrimary_MinSelfDamage = config.ShieldPrimary_MinSelfDamage;
    ShieldConfig.ShieldPrimary_AutoFireTestFreq = config.ShieldPrimary_AutoFireTestFreq;
    ShieldConfig.ShieldPrimary_FullyChargedTime = config.ShieldPrimary_FullyChargedTime;
    ShieldConfig.ShieldPrimary_bAutoRelease = config.ShieldPrimary_bAutoRelease;
    ShieldConfig.ShieldPrimary_bStartedChargingForce = config.ShieldPrimary_bStartedChargingForce;
    ShieldConfig.ShieldPrimary_ChargingSoundVolume = config.ShieldPrimary_ChargingSoundVolume;
    ShieldConfig.ShieldPrimary_AutoHitTime = config.ShieldPrimary_AutoHitTime;
    ShieldConfig.ShieldSecondary_FireRate = config.ShieldSecondary_FireRate;
    ShieldConfig.ShieldSecondary_AmmoPerFire = config.ShieldSecondary_AmmoPerFire;
    ShieldConfig.ShieldSecondary_AmmoRegenTime = config.ShieldSecondary_AmmoRegenTime;
    ShieldConfig.ShieldSecondary_ChargeupTime = config.ShieldSecondary_ChargeupTime;
    ShieldConfig.ShieldSecondary_ShieldSoundVolume = config.ShieldSecondary_ShieldSoundVolume;
    ShieldConfig.ShieldGun_PutDownTime = config.ShieldGun_PutDownTime;
    ShieldConfig.ShieldGun_BringUpTime = config.ShieldGun_BringUpTime;
    ShieldConfig.ShieldGun_MinReloadPct = config.ShieldGun_MinReloadPct;
    
    // bio rifle
    BioConfig.bModifyBioRifle = config.bModifyBioRifle;
    BioConfig.BioPrimary_FireRate = config.BioPrimary_FireRate;
    BioConfig.BioPrimary_AmmoPerFire = config.BioPrimary_AmmoPerFire;
    BioConfig.BioSecondary_FireRate = config.BioSecondary_FireRate;
    BioConfig.BioSecondary_GoopUpRate = config.BioSecondary_GoopUpRate;
    BioConfig.BioSecondary_MaxGoopLoad = config.BioSecondary_MaxGoopLoad;
    BioConfig.Bio_ProjBaseDamage = config.Bio_ProjBaseDamage;
    BioConfig.Bio_ProjGloblingSpeed = config.Bio_ProjGloblingSpeed;
    BioConfig.Bio_ProjRestTime = config.Bio_ProjRestTime;
    BioConfig.Bio_ProjTouchDetinationDelay = config.Bio_ProjTouchDetinationDelay;
    BioConfig.Bio_ProjDripTime = config.Bio_ProjDripTime;
    BioConfig.Bio_ProjMaxGoopLevel = config.Bio_ProjMaxGoopLevel;
    BioConfig.Bio_ProjMergeGlobs = config.Bio_ProjMergeGlobs;
    BioConfig.BioRifle_PutDownTime = config.BioRifle_PutDownTime;
    BioConfig.BioRifle_BringUpTime = config.BioRifle_BringUpTime;
    BioConfig.BioRifle_MinReloadPct = config.BioRifle_MinReloadPct;

    // shock
    ShockConfig.bModifyShockRifle = config.bModifyShockRifle;
    ShockConfig.ShockPrimary_TraceRange = config.ShockPrimary_TraceRange;
    ShockConfig.ShockPrimary_Momentum = config.ShockPrimary_Momentum;
    ShockConfig.ShockPrimary_AmmoPerFire = config.ShockPrimary_AmmoPerFire;
    ShockConfig.ShockPrimary_DamageMin = config.ShockPrimary_DamageMin;
    ShockConfig.ShockPrimary_DamageMax = config.ShockPrimary_DamageMax;
    ShockConfig.ShockPrimary_FireRate = config.ShockPrimary_FireRate;
    ShockConfig.ShockSecondary_AmmoPerFire = config.ShockSecondary_AmmoPerFire;
    ShockConfig.ShockSecondary_FireRate = config.ShockSecondary_FireRate;
    ShockConfig.ShockSecondary_ProjSpeed = config.ShockSecondary_ProjSpeed;
    ShockConfig.ShockSecondary_ProjMaxSpeed = config.ShockSecondary_ProjMaxSpeed;
    ShockConfig.ShockSecondary_ProjDamage = config.ShockSecondary_ProjDamage;
    ShockConfig.ShockSecondary_ProjDamageRadius = config.ShockSecondary_ProjDamageRadius;
    ShockConfig.ShockSecondary_ProjMomentumTransfer = config.ShockSecondary_ProjMomentumTransfer;
    ShockConfig.ShockSecondary_ProjComboDamage = config.ShockSecondary_ProjComboDamage;
    ShockConfig.ShockSecondary_ProjComboRadius = config.ShockSecondary_ProjComboRadius;
    ShockConfig.ShockSecondary_ProjComboMomentumTransfer = config.ShockSecondary_ProjComboMomentumTransfer;
    ShockConfig.ShockSecondary_ProjLifeSpan = config.ShockSecondary_ProjLifeSpan;
    ShockConfig.ShockSecondary_ProjComboAmmoCost = config.ShockSecondary_ProjComboAmmoCost;
    ShockConfig.ShockSecondary_ProjForceScale = config.ShockSecondary_ProjForceScale;
    ShockConfig.ShockSecondary_ProjForceRadius = config.ShockSecondary_ProjForceRadius;
    ShockConfig.ShockSecondary_ProjSoundRadius = config.ShockSecondary_ProjSoundRadius;
    ShockConfig.ShockSecondary_ProjSoundVolume = config.ShockSecondary_ProjSoundVolume;
    ShockConfig.ShockRifle_PutDownTime = config.ShockRifle_PutDownTime;
    ShockConfig.ShockRifle_BringUpTime = config.ShockRifle_BringUpTime;
    ShockConfig.ShockRifle_MinReloadPct = config.ShockRifle_MinReloadPct;

    // lightning gun
    SniperConfig.bModifySniperRifle = config.bModifySniperRifle;
    SniperConfig.SniperPrimary_AmmoPerFire = config.SniperPrimary_AmmoPerFire;
    SniperConfig.SniperPrimary_DamageMin = config.SniperPrimary_DamageMin;
    SniperConfig.SniperPrimary_DamageMax = config.SniperPrimary_DamageMax;
    SniperConfig.SniperPrimary_TraceRange = config.SniperPrimary_TraceRange;
    SniperConfig.SniperPrimary_FireRate = config.SniperPrimary_FireRate;
    SniperConfig.SniperPrimary_NumArcs = config.SniperPrimary_NumArcs;
    SniperConfig.SniperPrimary_SecDamageMult = config.SniperPrimary_SecDamageMult;
    SniperConfig.SniperPrimary_SecTraceDist = config.SniperPrimary_SecTraceDist;
    SniperConfig.SniperPrimary_HeadshotDamageMult = config.SniperPrimary_HeadshotDamageMult;
    SniperConfig.SniperRifle_PutDownTime = config.SniperRifle_PutDownTime;
    SniperConfig.SniperRifle_BringUpTime = config.SniperRifle_BringUpTime;
    SniperConfig.SniperRifle_MinReloadPct = config.SniperRifle_MinReloadPct;
}

defaultproperties
{
}