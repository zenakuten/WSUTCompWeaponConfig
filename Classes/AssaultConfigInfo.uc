class AssaultConfigInfo extends ReplicationInfo;

var bool bModifyAssaultRifle;
var float AssaultRifle_PutDownTime;
var float AssaultRifle_BringUpTime;
var float AssaultRifle_MinReloadPct;
var int AssaultPrimary_DamageMin;
var int AssaultPrimary_DamageMax;
var float AssaultPrimary_TraceRange;
var float AssaultPrimary_Momentum;
var int AssaultPrimary_AmmoPerFire;
var float AssaultPrimary_FireRate;
var float AssaultPrimary_AimError;
var float AssaultPrimary_Spread;
var float AssaultSecondary_DamageAtten;
var float AssaultSecondary_mScale;
var float AssaultSecondary_mScaleMultiplier;
var float AssaultSecondary_mSpeedMin;
var float AssaultSecondary_mSpeedMax;
var float AssaultSecondary_mHoldSpeedMin;
var float AssaultSecondary_mHoldSpeedMax;
var float AssaultSecondary_mHoldSpeedGainPerSec;
var float AssaultSecondary_mWaitTime;
var float AssaultGrenade_ExplodeTimer;
var float AssaultGrenade_DampenFactor;
var float AssaultGrenade_DampenFactorParallel;
var float AssaultGrenade_TossZ;
var float AssaultGrenade_Damage;
var float AssaultGrenade_DamageRadius;
var float AssaultGrenade_MomentumTransfer;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyAssaultRifle,
        AssaultRifle_PutDownTime, AssaultRifle_BringUpTime, AssaultRifle_MinReloadPct,
        AssaultPrimary_DamageMin, AssaultPrimary_DamageMax, AssaultPrimary_TraceRange, AssaultPrimary_Momentum,
        AssaultPrimary_AmmoPerFire, AssaultPrimary_FireRate, AssaultPrimary_AimError, AssaultPrimary_Spread,
        AssaultSecondary_DamageAtten, AssaultSecondary_mScale, AssaultSecondary_mScaleMultiplier, AssaultSecondary_mSpeedMin,
        AssaultSecondary_mSpeedMax, AssaultSecondary_mHoldSpeedMin, AssaultSecondary_mHoldSpeedMax, AssaultSecondary_mHoldSpeedGainPerSec,
        AssaultSecondary_mWaitTime, AssaultGrenade_ExplodeTimer, AssaultGrenade_DampenFactor, AssaultGrenade_DampenFactorParallel,
        AssaultGrenade_TossZ, AssaultGrenade_Damage, AssaultGrenade_DamageRadius, AssaultGrenade_MomentumTransfer;
}

function LoadFrom(MutWeaponConfig config)
{
    bModifyAssaultRifle = config.bModifyAssaultRifle;
    AssaultRifle_PutDownTime = config.AssaultRifle_PutDownTime;
    AssaultRifle_BringUpTime = config.AssaultRifle_BringUpTime;
    AssaultRifle_MinReloadPct = config.AssaultRifle_MinReloadPct;
    AssaultPrimary_DamageMin = config.AssaultPrimary_DamageMin;
    AssaultPrimary_DamageMax = config.AssaultPrimary_DamageMax;
    AssaultPrimary_TraceRange = config.AssaultPrimary_TraceRange;
    AssaultPrimary_Momentum = config.AssaultPrimary_Momentum;
    AssaultPrimary_AmmoPerFire = config.AssaultPrimary_AmmoPerFire;
    AssaultPrimary_FireRate = config.AssaultPrimary_FireRate;
    AssaultPrimary_AimError = config.AssaultPrimary_AimError;
    AssaultPrimary_Spread = config.AssaultPrimary_Spread;
    AssaultSecondary_DamageAtten = config.AssaultSecondary_DamageAtten;
    AssaultSecondary_mScale = config.AssaultSecondary_mScale;
    AssaultSecondary_mScaleMultiplier = config.AssaultSecondary_mScaleMultiplier;
    AssaultSecondary_mSpeedMin = config.AssaultSecondary_mSpeedMin;
    AssaultSecondary_mSpeedMax = config.AssaultSecondary_mSpeedMax;
    AssaultSecondary_mHoldSpeedMin = config.AssaultSecondary_mHoldSpeedMin;
    AssaultSecondary_mHoldSpeedMax = config.AssaultSecondary_mHoldSpeedMax;
    AssaultSecondary_mHoldSpeedGainPerSec = config.AssaultSecondary_mHoldSpeedGainPerSec;
    AssaultSecondary_mWaitTime = config.AssaultSecondary_mWaitTime;
    AssaultGrenade_ExplodeTimer = config.AssaultGrenade_ExplodeTimer;
    AssaultGrenade_DampenFactor = config.AssaultGrenade_DampenFactor;
    AssaultGrenade_DampenFactorParallel = config.AssaultGrenade_DampenFactorParallel;
    AssaultGrenade_TossZ = config.AssaultGrenade_TossZ;
    AssaultGrenade_Damage = config.AssaultGrenade_Damage;
    AssaultGrenade_DamageRadius = config.AssaultGrenade_DamageRadius;
    AssaultGrenade_MomentumTransfer = config.AssaultGrenade_MomentumTransfer;
}

simulated function Modify()
{
    if(!bModifyAssaultRifle)
        return;

    // same grenade used by default, utcomp, newnet
    class'Grenade'.default.ExplodeTimer = AssaultGrenade_ExplodeTimer;
    class'Grenade'.default.DampenFactor = AssaultGrenade_DampenFactor;
    class'Grenade'.default.DampenFactorParallel = AssaultGrenade_DampenFactorParallel;
    class'Grenade'.default.TossZ = AssaultGrenade_TossZ;
    class'Grenade'.default.Damage = AssaultGrenade_Damage;
    class'Grenade'.default.DamageRadius = AssaultGrenade_DamageRadius;
    class'Grenade'.default.MomentumTransfer = AssaultGrenade_MomentumTransfer;
    
    //stock weapon
    class'AssaultRifle'.default.PutDownTime = AssaultRifle_PutDownTime;
    class'AssaultRifle'.default.BringUpTime = AssaultRifle_BringUpTime;
    class'AssaultRifle'.default.MinReloadPct = AssaultRifle_MinReloadPct;
    class'AssaultFire'.default.DamageMin = AssaultPrimary_DamageMin;
    class'AssaultFire'.default.DamageMax = AssaultPrimary_DamageMax;
    class'AssaultFire'.default.TraceRange = AssaultPrimary_TraceRange;
    class'AssaultFire'.default.Momentum = AssaultPrimary_Momentum;
    class'AssaultFire'.default.AmmoPerFire = AssaultPrimary_AmmoPerFire;
    class'AssaultFire'.default.FireRate = AssaultPrimary_FireRate;
    class'AssaultFire'.default.AimError = AssaultPrimary_AimError;
    class'AssaultFire'.default.Spread = AssaultPrimary_Spread;
    class'AssaultGrenade'.default.DamageAtten = AssaultSecondary_DamageAtten;
    class'AssaultGrenade'.default.mScale = AssaultSecondary_mScale;
    class'AssaultGrenade'.default.mScaleMultiplier = AssaultSecondary_mScaleMultiplier;
    class'AssaultGrenade'.default.mSpeedMin = AssaultSecondary_mSpeedMin;
    class'AssaultGrenade'.default.mSpeedMax = AssaultSecondary_mSpeedMax;
    class'AssaultGrenade'.default.mHoldSpeedMin = AssaultSecondary_mHoldSpeedMin;
    class'AssaultGrenade'.default.mHoldSpeedMax = AssaultSecondary_mHoldSpeedMax;
    class'AssaultGrenade'.default.mHoldSpeedGainPerSec = AssaultSecondary_mHoldSpeedGainPerSec;
    class'AssaultGrenade'.default.mWaitTime = AssaultSecondary_mWaitTime;

    class'AssaultRifle'.default.PutDownAnimRate = class'AssaultRifle'.default.PutDownAnimRate / (AssaultRifle_PutDownTime / default.AssaultRifle_PutDownTime);
    class'AssaultRifle'.default.SelectAnimRate = class'AssaultRifle'.default.SelectAnimRate / (AssaultRifle_BringUpTime / default.AssaultRifle_BringUpTime);

    //utcomp
    class'UTComp_AssaultRifle'.default.PutDownTime = AssaultRifle_PutDownTime;
    class'UTComp_AssaultRifle'.default.BringUpTime = AssaultRifle_BringUpTime;
    class'UTComp_AssaultRifle'.default.MinReloadPct = AssaultRifle_MinReloadPct;
    class'UTComp_AssaultFire'.default.DamageMin = AssaultPrimary_DamageMin;
    class'UTComp_AssaultFire'.default.DamageMax = AssaultPrimary_DamageMax;
    class'UTComp_AssaultFire'.default.TraceRange = AssaultPrimary_TraceRange;
    class'UTComp_AssaultFire'.default.Momentum = AssaultPrimary_Momentum;
    class'UTComp_AssaultFire'.default.AmmoPerFire = AssaultPrimary_AmmoPerFire;
    class'UTComp_AssaultFire'.default.FireRate = AssaultPrimary_FireRate;
    class'UTComp_AssaultFire'.default.AimError = AssaultPrimary_AimError;
    class'UTComp_AssaultFire'.default.Spread = AssaultPrimary_Spread;
    class'UTComp_AssaultGrenade'.default.DamageAtten = AssaultSecondary_DamageAtten;
    class'UTComp_AssaultGrenade'.default.mScale = AssaultSecondary_mScale;
    class'UTComp_AssaultGrenade'.default.mScaleMultiplier = AssaultSecondary_mScaleMultiplier;
    class'UTComp_AssaultGrenade'.default.mSpeedMin = AssaultSecondary_mSpeedMin;
    class'UTComp_AssaultGrenade'.default.mSpeedMax = AssaultSecondary_mSpeedMax;
    class'UTComp_AssaultGrenade'.default.mHoldSpeedMin = AssaultSecondary_mHoldSpeedMin;
    class'UTComp_AssaultGrenade'.default.mHoldSpeedMax = AssaultSecondary_mHoldSpeedMax;
    class'UTComp_AssaultGrenade'.default.mHoldSpeedGainPerSec = AssaultSecondary_mHoldSpeedGainPerSec;
    class'UTComp_AssaultGrenade'.default.mWaitTime = AssaultSecondary_mWaitTime;

    class'UTComp_AssaultRifle'.default.PutDownAnimRate = class'UTComp_AssaultRifle'.default.PutDownAnimRate / (AssaultRifle_PutDownTime / default.AssaultRifle_PutDownTime);
    class'UTComp_AssaultRifle'.default.SelectAnimRate = class'UTComp_AssaultRifle'.default.SelectAnimRate / (AssaultRifle_BringUpTime / default.AssaultRifle_BringUpTime);

    //newnet weapon
    class'NewNet_AssaultRifle'.default.PutDownTime = AssaultRifle_PutDownTime;
    class'NewNet_AssaultRifle'.default.BringUpTime = AssaultRifle_BringUpTime;
    class'NewNet_AssaultRifle'.default.MinReloadPct = AssaultRifle_MinReloadPct;
    class'NewNet_AssaultFire'.default.DamageMin = AssaultPrimary_DamageMin;
    class'NewNet_AssaultFire'.default.DamageMax = AssaultPrimary_DamageMax;
    class'NewNet_AssaultFire'.default.TraceRange = AssaultPrimary_TraceRange;
    class'NewNet_AssaultFire'.default.Momentum = AssaultPrimary_Momentum;
    class'NewNet_AssaultFire'.default.AmmoPerFire = AssaultPrimary_AmmoPerFire;
    class'NewNet_AssaultFire'.default.FireRate = AssaultPrimary_FireRate;
    class'NewNet_AssaultFire'.default.AimError = AssaultPrimary_AimError;
    class'NewNet_AssaultFire'.default.Spread = AssaultPrimary_Spread;
    class'NewNet_AssaultGrenade'.default.DamageAtten = AssaultSecondary_DamageAtten;
    class'NewNet_AssaultGrenade'.default.mScale = AssaultSecondary_mScale;
    class'NewNet_AssaultGrenade'.default.mScaleMultiplier = AssaultSecondary_mScaleMultiplier;
    class'NewNet_AssaultGrenade'.default.mSpeedMin = AssaultSecondary_mSpeedMin;
    class'NewNet_AssaultGrenade'.default.mSpeedMax = AssaultSecondary_mSpeedMax;
    class'NewNet_AssaultGrenade'.default.mHoldSpeedMin = AssaultSecondary_mHoldSpeedMin;
    class'NewNet_AssaultGrenade'.default.mHoldSpeedMax = AssaultSecondary_mHoldSpeedMax;
    class'NewNet_AssaultGrenade'.default.mHoldSpeedGainPerSec = AssaultSecondary_mHoldSpeedGainPerSec;
    class'NewNet_AssaultGrenade'.default.mWaitTime = AssaultSecondary_mWaitTime;

    class'NewNet_AssaultRifle'.default.PutDownAnimRate = class'NewNet_AssaultRifle'.default.PutDownAnimRate / (AssaultRifle_PutDownTime / default.AssaultRifle_PutDownTime);
    class'NewNet_AssaultRifle'.default.SelectAnimRate = class'NewNet_AssaultRifle'.default.SelectAnimRate / (AssaultRifle_BringUpTime / default.AssaultRifle_BringUpTime);
}

defaultproperties
{
    bModifyAssaultRifle=false
    AssaultRifle_PutDownTime=0.33
    AssaultRifle_BringUpTime=0.33
    AssaultRifle_MinReloadPct=0.5
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
}