class ShockConfigInfo extends WeaponConfigSubInfo;

var float ShockPrimary_TraceRange;
var float ShockPrimary_Momentum;
var int ShockPrimary_AmmoPerFire;
var int ShockPrimary_DamageMin;
var int ShockPrimary_DamageMax;
var float ShockPrimary_FireRate;
var int ShockSecondary_AmmoPerFire;
var float ShockSecondary_FireRate;
var float ShockSecondary_ProjSpeed;
var float ShockSecondary_ProjMaxSpeed;
var float ShockSecondary_ProjDamage;
var float ShockSecondary_ProjDamageRadius;
var float ShockSecondary_ProjMomentumTransfer;
var float ShockSecondary_ProjComboDamage;
var float ShockSecondary_ProjComboRadius;
var float ShockSecondary_ProjComboMomentumTransfer;
var float ShockSecondary_ProjLifeSpan;
var int ShockSecondary_ProjComboAmmoCost;
var float ShockSecondary_ProjForceScale;
var float ShockSecondary_ProjForceRadius;
var float ShockSecondary_ProjSoundRadius;
var byte ShockSecondary_ProjSoundVolume;
var float ShockRifle_PutDownTime;
var float ShockRifle_BringUpTime;
var float ShockRifle_MinReloadPct;

replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        ShockPrimary_FireRate, ShockPrimary_TraceRange, ShockPrimary_Momentum,
        ShockPrimary_AmmoPerFire, ShockPrimary_DamageMin, ShockPrimary_DamageMax, 
        ShockSecondary_AmmoPerFire, ShockSecondary_FireRate, ShockSecondary_ProjSpeed,
        ShockSecondary_ProjMaxSpeed, ShockSecondary_ProjDamage, ShockSecondary_ProjDamageRadius,
        ShockSecondary_ProjMomentumTransfer, ShockSecondary_ProjComboDamage, ShockSecondary_ProjComboRadius,
        ShockSecondary_ProjComboMomentumTransfer, ShockSecondary_ProjLifeSpan, 
        ShockSecondary_ProjComboAmmoCost, ShockSecondary_ProjForceScale, 
        ShockSecondary_ProjForceRadius, ShockSecondary_ProjSoundRadius, ShockSecondary_ProjSoundVolume,
        ShockRifle_BringUpTime, ShockRifle_PutDownTime, ShockRifle_MinReloadPct;    
}

function LoadFrom(MutWeaponConfig config)
{
    ShockPrimary_TraceRange = config.ShockPrimary_TraceRange;
    ShockPrimary_Momentum = config.ShockPrimary_Momentum;
    ShockPrimary_AmmoPerFire = config.ShockPrimary_AmmoPerFire;
    ShockPrimary_DamageMin = config.ShockPrimary_DamageMin;
    ShockPrimary_DamageMax = config.ShockPrimary_DamageMax;
    ShockPrimary_FireRate = config.ShockPrimary_FireRate;
    ShockSecondary_AmmoPerFire = config.ShockSecondary_AmmoPerFire;
    ShockSecondary_FireRate = config.ShockSecondary_FireRate;
    ShockSecondary_ProjSpeed = config.ShockSecondary_ProjSpeed;
    ShockSecondary_ProjMaxSpeed = config.ShockSecondary_ProjMaxSpeed;
    ShockSecondary_ProjDamage = config.ShockSecondary_ProjDamage;
    ShockSecondary_ProjDamageRadius = config.ShockSecondary_ProjDamageRadius;
    ShockSecondary_ProjMomentumTransfer = config.ShockSecondary_ProjMomentumTransfer;
    ShockSecondary_ProjComboDamage = config.ShockSecondary_ProjComboDamage;
    ShockSecondary_ProjComboRadius = config.ShockSecondary_ProjComboRadius;
    ShockSecondary_ProjComboMomentumTransfer = config.ShockSecondary_ProjComboMomentumTransfer;
    ShockSecondary_ProjLifeSpan = config.ShockSecondary_ProjLifeSpan;
    ShockSecondary_ProjComboAmmoCost = config.ShockSecondary_ProjComboAmmoCost;
    ShockSecondary_ProjForceScale = config.ShockSecondary_ProjForceScale;
    ShockSecondary_ProjForceRadius = config.ShockSecondary_ProjForceRadius;
    ShockSecondary_ProjSoundRadius = config.ShockSecondary_ProjSoundRadius;
    ShockSecondary_ProjSoundVolume = config.ShockSecondary_ProjSoundVolume;
    ShockRifle_PutDownTime = config.ShockRifle_PutDownTime;
    ShockRifle_BringUpTime = config.ShockRifle_BringUpTime;
    ShockRifle_MinReloadPct = config.ShockRifle_MinReloadPct;
}

simulated function Modify()
{
    //stock
    class'ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;
    class'ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    SetSwitchTimes(class'ShockRifle', ShockRifle_PutDownTime, ShockRifle_BringUpTime);
    class'ShockRifle'.default.MinReloadPct = ShockRifle_MinReloadPct;

    //utcomp
    class'UTComp_ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'UTComp_ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'UTComp_ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'UTComp_ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'UTComp_ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'UTComp_ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;
    class'UTComp_ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'UTComp_ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    SetSwitchTimes(class'UTComp_ShockRifle', ShockRifle_PutDownTime, ShockRifle_BringUpTime);
    class'UTComp_ShockRifle'.default.MinReloadPct = ShockRifle_MinReloadPct;

    //newnet
    class'NewNet_ShockBeamFire'.default.TraceRange = ShockPrimary_TraceRange;
    class'NewNet_ShockBeamFire'.default.Momentum = ShockPrimary_Momentum;
    class'NewNet_ShockBeamFire'.default.AmmoPerFire = ShockPrimary_AmmoPerFire;
    class'NewNet_ShockBeamFire'.default.DamageMin = ShockPrimary_DamageMin;
    class'NewNet_ShockBeamFire'.default.DamageMax = ShockPrimary_DamageMax;
    class'NewNet_ShockBeamFire'.default.FireRate = ShockPrimary_FireRate;
    class'NewNet_ShockProjFire'.default.AmmoPerFire = ShockSecondary_AmmoPerFire;
    class'NewNet_ShockProjFire'.default.FireRate = ShockSecondary_FireRate;
    SetSwitchTimes(class'NewNet_ShockRifle', ShockRifle_PutDownTime, ShockRifle_BringUpTime);
    class'NewNet_ShockRifle'.default.MinReloadPct = ShockRifle_MinReloadPct;

    // NewNet_Fake_ShockProjectile is the client-side prediction and must fly like the real ball
    ApplyShockProj(class'ShockProjectile');
    ApplyShockProj(class'UTComp_ShockProjectile');
    ApplyShockProj(class'NewNet_ShockProjectile');
    ApplyShockProj(class'NewNet_Fake_ShockProjectile');
}

simulated final function ApplyShockProj(class<ShockProjectile> P)
{
    P.default.Speed = ShockSecondary_ProjSpeed;
    P.default.MaxSpeed = ShockSecondary_ProjMaxSpeed;
    P.default.Damage = ShockSecondary_ProjDamage;
    P.default.DamageRadius = ShockSecondary_ProjDamageRadius;
    P.default.MomentumTransfer = ShockSecondary_ProjMomentumTransfer;
    P.default.ComboDamage = ShockSecondary_ProjComboDamage;
    P.default.ComboRadius = ShockSecondary_ProjComboRadius;
    P.default.ComboMomentumTransfer = ShockSecondary_ProjComboMomentumTransfer;
    P.default.LifeSpan = ShockSecondary_ProjLifeSpan;
    P.default.ComboAmmoCost = ShockSecondary_ProjComboAmmoCost;
    P.default.ForceScale = ShockSecondary_ProjForceScale;
    P.default.ForceRadius = ShockSecondary_ProjForceRadius;
    P.default.SoundRadius = ShockSecondary_ProjSoundRadius;
    P.default.SoundVolume = ShockSecondary_ProjSoundVolume;
}

defaultproperties
{
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
}