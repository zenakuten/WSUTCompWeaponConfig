class MiniConfigInfo extends ReplicationInfo;

var bool bModifyMinigun;
var float Minigun_PutDownTime;
var float Minigun_BringUpTime;
var float Minigun_MinReloadPct;
var int MinigunPrimary_DamageMin;
var int MinigunPrimary_DamageMax;
var float MinigunPrimary_TraceRange;
var float MinigunPrimary_Momentum;
var int MinigunPrimary_AmmoPerFire;
var int MinigunPrimary_RoundsPerRotation;
var float MinigunPrimary_BarrelRotationsPerSec;
var float MinigunPrimary_AimError;
var float MinigunPrimary_Spread;
var float MinigunPrimary_PreFireTime;
var float MinigunPrimary_WindupTime;
var int MinigunSecondary_DamageMin;
var int MinigunSecondary_DamageMax;
var float MinigunSecondary_TraceRange;
var float MinigunSecondary_Momentum;
var int MinigunSecondary_AmmoPerFire;
var int MinigunSecondary_RoundsPerRotation;
var float MinigunSecondary_BarrelRotationsPerSec;
var float MinigunSecondary_AimError;
var float MinigunSecondary_Spread;
var float MinigunSecondary_PreFireTime;
var float MinigunSecondary_WindupTime;

replication
{
    reliable if(bNetInitial && Role == ROLE_Authority)
        bModifyMinigun,
        Minigun_PutDownTime, Minigun_BringUpTime, Minigun_MinReloadPct, MinigunPrimary_DamageMin,
        MinigunPrimary_DamageMax, MinigunPrimary_TraceRange, MinigunPrimary_Momentum, MinigunPrimary_AmmoPerFire,
        MinigunPrimary_RoundsPerRotation, MinigunPrimary_BarrelRotationsPerSec, MinigunPrimary_AimError, 
        MinigunPrimary_Spread, MinigunPrimary_PreFireTime, MinigunPrimary_WindupTime,
        MinigunSecondary_DamageMin, MinigunSecondary_DamageMax, MinigunSecondary_TraceRange, MinigunSecondary_Momentum,
        MinigunSecondary_AmmoPerFire, MinigunSecondary_RoundsPerRotation, MinigunSecondary_BarrelRotationsPerSec, 
        MinigunSecondary_AimError, MinigunSecondary_Spread, MinigunSecondary_PreFireTime, MinigunSecondary_WindupTime;
}


function LoadFrom(MutWeaponConfig config)
{
    bModifyMinigun = config.bModifyMinigun;
    Minigun_PutDownTime = config.Minigun_PutDownTime;
    Minigun_BringUpTime = config.Minigun_BringUpTime;
    Minigun_MinReloadPct = config.Minigun_MinReloadPct;
    MinigunPrimary_DamageMin = config.MinigunPrimary_DamageMin;
    MinigunPrimary_DamageMax = config.MinigunPrimary_DamageMax;
    MinigunPrimary_TraceRange = config.MinigunPrimary_TraceRange;
    MinigunPrimary_Momentum = config.MinigunPrimary_Momentum;
    MinigunPrimary_AmmoPerFire = config.MinigunPrimary_AmmoPerFire;
    MinigunPrimary_RoundsPerRotation = config.MinigunPrimary_RoundsPerRotation;
    MinigunPrimary_BarrelRotationsPerSec = config.MinigunPrimary_BarrelRotationsPerSec;
    MinigunPrimary_AimError = config.MinigunPrimary_AimError;
    MinigunPrimary_Spread = config.MinigunPrimary_Spread;
    MinigunPrimary_PreFireTime = config.MinigunPrimary_PreFireTime;
    MinigunPrimary_WindupTime = config.MinigunPrimary_WindupTime;
    MinigunSecondary_DamageMin = config.MinigunSecondary_DamageMin;
    MinigunSecondary_DamageMax = config.MinigunSecondary_DamageMax;
    MinigunSecondary_TraceRange = config.MinigunSecondary_TraceRange;
    MinigunSecondary_Momentum = config.MinigunSecondary_Momentum;
    MinigunSecondary_AmmoPerFire = config.MinigunSecondary_AmmoPerFire;
    MinigunSecondary_RoundsPerRotation = config.MinigunSecondary_RoundsPerRotation;
    MinigunSecondary_BarrelRotationsPerSec = config.MinigunSecondary_BarrelRotationsPerSec;
    MinigunSecondary_AimError = config.MinigunSecondary_AimError;
    MinigunSecondary_Spread = config.MinigunSecondary_Spread;
    MinigunSecondary_PreFireTime = config.MinigunSecondary_PreFireTime;
    MinigunSecondary_WindupTime = config.MinigunSecondary_WindupTime;
}

simulated function Modify()
{
    if(!bModifyMinigun)
        return;

    // stock
    class'Minigun'.default.PutDownTime = Minigun_PutDownTime;
    class'Minigun'.default.BringUpTime = Minigun_BringUpTime;
    class'Minigun'.default.MinReloadPct = Minigun_MinReloadPct;
    class'MinigunFire'.default.DamageMin = MinigunPrimary_DamageMin;
    class'MinigunFire'.default.DamageMax = MinigunPrimary_DamageMax;
    class'MinigunFire'.default.TraceRange = MinigunPrimary_TraceRange;
    class'MinigunFire'.default.Momentum = MinigunPrimary_Momentum;
    class'MinigunFire'.default.AmmoPerFire = MinigunPrimary_AmmoPerFire;
    class'MinigunFire'.default.RoundsPerRotation = MinigunPrimary_RoundsPerRotation;
    class'MinigunFire'.default.BarrelRotationsPerSec = MinigunPrimary_BarrelRotationsPerSec;
    class'MinigunFire'.default.AimError = MinigunPrimary_AimError;
    class'MinigunFire'.default.Spread = MinigunPrimary_Spread;
    class'MinigunFire'.default.PreFireTime = MinigunPrimary_PreFireTime;
    class'MinigunFire'.default.WindupTime = MinigunPrimary_WindupTime;
    class'MinigunAltFire'.default.DamageMin = MinigunSecondary_DamageMin;
    class'MinigunAltFire'.default.DamageMax = MinigunSecondary_DamageMax;
    class'MinigunAltFire'.default.TraceRange = MinigunSecondary_TraceRange;
    class'MinigunAltFire'.default.Momentum = MinigunSecondary_Momentum;
    class'MinigunAltFire'.default.AmmoPerFire = MinigunSecondary_AmmoPerFire;
    class'MinigunAltFire'.default.RoundsPerRotation = MinigunSecondary_RoundsPerRotation;
    class'MinigunAltFire'.default.BarrelRotationsPerSec = MinigunSecondary_BarrelRotationsPerSec;
    class'MinigunAltFire'.default.AimError = MinigunSecondary_AimError;
    class'MinigunAltFire'.default.Spread = MinigunSecondary_Spread;
    class'MinigunAltFire'.default.PreFireTime = MinigunSecondary_PreFireTime;
    class'MinigunAltFire'.default.WindupTime = MinigunSecondary_WindupTime;

    // utcomp
    class'UTComp_Minigun'.default.PutDownTime = Minigun_PutDownTime;
    class'UTComp_Minigun'.default.BringUpTime = Minigun_BringUpTime;
    class'UTComp_Minigun'.default.MinReloadPct = Minigun_MinReloadPct;
    class'UTComp_MinigunFire'.default.DamageMin = MinigunPrimary_DamageMin;
    class'UTComp_MinigunFire'.default.DamageMax = MinigunPrimary_DamageMax;
    class'UTComp_MinigunFire'.default.TraceRange = MinigunPrimary_TraceRange;
    class'UTComp_MinigunFire'.default.Momentum = MinigunPrimary_Momentum;
    class'UTComp_MinigunFire'.default.AmmoPerFire = MinigunPrimary_AmmoPerFire;
    class'UTComp_MinigunFire'.default.RoundsPerRotation = MinigunPrimary_RoundsPerRotation;
    class'UTComp_MinigunFire'.default.BarrelRotationsPerSec = MinigunPrimary_BarrelRotationsPerSec;
    class'UTComp_MinigunFire'.default.AimError = MinigunPrimary_AimError;
    class'UTComp_MinigunFire'.default.Spread = MinigunPrimary_Spread;
    class'UTComp_MinigunFire'.default.PreFireTime = MinigunPrimary_PreFireTime;
    class'UTComp_MinigunFire'.default.WindupTime = MinigunPrimary_WindupTime;
    class'UTComp_MinigunAltFire'.default.DamageMin = MinigunSecondary_DamageMin;
    class'UTComp_MinigunAltFire'.default.DamageMax = MinigunSecondary_DamageMax;
    class'UTComp_MinigunAltFire'.default.TraceRange = MinigunSecondary_TraceRange;
    class'UTComp_MinigunAltFire'.default.Momentum = MinigunSecondary_Momentum;
    class'UTComp_MinigunAltFire'.default.AmmoPerFire = MinigunSecondary_AmmoPerFire;
    class'UTComp_MinigunAltFire'.default.RoundsPerRotation = MinigunSecondary_RoundsPerRotation;
    class'UTComp_MinigunAltFire'.default.BarrelRotationsPerSec = MinigunSecondary_BarrelRotationsPerSec;
    class'UTComp_MinigunAltFire'.default.AimError = MinigunSecondary_AimError;
    class'UTComp_MinigunAltFire'.default.Spread = MinigunSecondary_Spread;
    class'UTComp_MinigunAltFire'.default.PreFireTime = MinigunSecondary_PreFireTime;
    class'UTComp_MinigunAltFire'.default.WindupTime = MinigunSecondary_WindupTime;

    // NewNet
    class'NewNet_Minigun'.default.PutDownTime = Minigun_PutDownTime;
    class'NewNet_Minigun'.default.BringUpTime = Minigun_BringUpTime;
    class'NewNet_Minigun'.default.MinReloadPct = Minigun_MinReloadPct;
    class'NewNet_MinigunFire'.default.DamageMin = MinigunPrimary_DamageMin;
    class'NewNet_MinigunFire'.default.DamageMax = MinigunPrimary_DamageMax;
    class'NewNet_MinigunFire'.default.TraceRange = MinigunPrimary_TraceRange;
    class'NewNet_MinigunFire'.default.Momentum = MinigunPrimary_Momentum;
    class'NewNet_MinigunFire'.default.AmmoPerFire = MinigunPrimary_AmmoPerFire;
    class'NewNet_MinigunFire'.default.RoundsPerRotation = MinigunPrimary_RoundsPerRotation;
    class'NewNet_MinigunFire'.default.BarrelRotationsPerSec = MinigunPrimary_BarrelRotationsPerSec;
    class'NewNet_MinigunFire'.default.AimError = MinigunPrimary_AimError;
    class'NewNet_MinigunFire'.default.Spread = MinigunPrimary_Spread;
    class'NewNet_MinigunFire'.default.PreFireTime = MinigunPrimary_PreFireTime;
    class'NewNet_MinigunFire'.default.WindupTime = MinigunPrimary_WindupTime;
    class'NewNet_MinigunAltFire'.default.DamageMin = MinigunSecondary_DamageMin;
    class'NewNet_MinigunAltFire'.default.DamageMax = MinigunSecondary_DamageMax;
    class'NewNet_MinigunAltFire'.default.TraceRange = MinigunSecondary_TraceRange;
    class'NewNet_MinigunAltFire'.default.Momentum = MinigunSecondary_Momentum;
    class'NewNet_MinigunAltFire'.default.AmmoPerFire = MinigunSecondary_AmmoPerFire;
    class'NewNet_MinigunAltFire'.default.RoundsPerRotation = MinigunSecondary_RoundsPerRotation;
    class'NewNet_MinigunAltFire'.default.BarrelRotationsPerSec = MinigunSecondary_BarrelRotationsPerSec;
    class'NewNet_MinigunAltFire'.default.AimError = MinigunSecondary_AimError;
    class'NewNet_MinigunAltFire'.default.Spread = MinigunSecondary_Spread;
    class'NewNet_MinigunAltFire'.default.PreFireTime = MinigunSecondary_PreFireTime;
    class'NewNet_MinigunAltFire'.default.WindupTime = MinigunSecondary_WindupTime;
}

defaultproperties
{
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
}