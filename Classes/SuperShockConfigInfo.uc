class SuperShockConfigInfo extends WeaponConfigSubInfo;

var bool bModifySuperShockRifle;
var int SuperShockPrimary_TraceRange;
var float SuperShockPrimary_Momentum;
var int SuperShockPrimary_AmmoPerFire;
var int SuperShockPrimary_DamageMin;
var int SuperShockPrimary_DamageMax;
var float SuperShockPrimary_FireRate;
var float SuperShockRifle_PutDownTime;
var float SuperShockRifle_BringUpTime;
var float SuperShockRifle_MinReloadPct;

replication
{
    reliable if(Role == ROLE_Authority && bNetInitial)
        bModifySuperShockRifle,
        SuperShockPrimary_FireRate, SuperShockPrimary_TraceRange, SuperShockPrimary_Momentum,
        SuperShockPrimary_AmmoPerFire, SuperShockPrimary_DamageMin, SuperShockPrimary_DamageMax, 
        SuperShockRifle_BringUpTime, SuperShockRifle_PutDownTime, SuperShockRifle_MinReloadPct;    
}

function LoadFrom(MutWeaponConfig config)
{
    bModifySuperShockRifle = config.bModifySuperShockRifle;
    SuperShockPrimary_TraceRange = config.SuperShockPrimary_TraceRange;
    SuperShockPrimary_Momentum = config.SuperShockPrimary_Momentum;
    SuperShockPrimary_AmmoPerFire = config.SuperShockPrimary_AmmoPerFire;
    SuperShockPrimary_DamageMin = config.SuperShockPrimary_DamageMin;
    SuperShockPrimary_DamageMax = config.SuperShockPrimary_DamageMax;
    SuperShockPrimary_FireRate = config.SuperShockPrimary_FireRate;
    SuperShockRifle_PutDownTime = config.SuperShockRifle_PutDownTime;
    SuperShockRifle_BringUpTime = config.SuperShockRifle_BringUpTime;
    SuperShockRifle_MinReloadPct = config.SuperShockRifle_MinReloadPct;
}

simulated function Modify()
{
    if(!bModifySuperShockRifle)
        return;
    
    //stock
    class'SuperShockBeamFire'.default.TraceRange = SuperShockPrimary_TraceRange;
    class'SuperShockBeamFire'.default.Momentum = SuperShockPrimary_Momentum;
    class'SuperShockBeamFire'.default.AmmoPerFire = SuperShockPrimary_AmmoPerFire;
    class'SuperShockBeamFire'.default.DamageMin = SuperShockPrimary_DamageMin;
    class'SuperShockBeamFire'.default.DamageMax = SuperShockPrimary_DamageMax;
    class'SuperShockBeamFire'.default.FireRate = SuperShockPrimary_FireRate;
    SetSwitchTimes(class'SuperShockRifle', SuperShockRifle_PutDownTime, SuperShockRifle_BringUpTime);
    class'SuperShockRifle'.default.MinReloadPct = SuperShockRifle_MinReloadPct;

    //utcomp
    class'UTComp_SuperShockBeamFire'.default.TraceRange = SuperShockPrimary_TraceRange;
    class'UTComp_SuperShockBeamFire'.default.Momentum = SuperShockPrimary_Momentum;
    class'UTComp_SuperShockBeamFire'.default.AmmoPerFire = SuperShockPrimary_AmmoPerFire;
    class'UTComp_SuperShockBeamFire'.default.DamageMin = SuperShockPrimary_DamageMin;
    class'UTComp_SuperShockBeamFire'.default.DamageMax = SuperShockPrimary_DamageMax;
    class'UTComp_SuperShockBeamFire'.default.FireRate = SuperShockPrimary_FireRate;
    SetSwitchTimes(class'UTComp_SuperShockRifle', SuperShockRifle_PutDownTime, SuperShockRifle_BringUpTime);
    class'UTComp_SuperShockRifle'.default.MinReloadPct = SuperShockRifle_MinReloadPct;

    //newnet
    class'NewNet_SuperShockBeamFire'.default.TraceRange = SuperShockPrimary_TraceRange;
    class'NewNet_SuperShockBeamFire'.default.Momentum = SuperShockPrimary_Momentum;
    class'NewNet_SuperShockBeamFire'.default.AmmoPerFire = SuperShockPrimary_AmmoPerFire;
    class'NewNet_SuperShockBeamFire'.default.DamageMin = SuperShockPrimary_DamageMin;
    class'NewNet_SuperShockBeamFire'.default.DamageMax = SuperShockPrimary_DamageMax;
    class'NewNet_SuperShockBeamFire'.default.FireRate = SuperShockPrimary_FireRate;
    SetSwitchTimes(class'NewNet_SuperShockRifle', SuperShockRifle_PutDownTime, SuperShockRifle_BringUpTime);
    class'NewNet_SuperShockRifle'.default.MinReloadPct = SuperShockRifle_MinReloadPct;
}

defaultproperties
{
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
}